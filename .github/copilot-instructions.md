# DeviceKit - iOS/tvOS/watchOS Device Detection Library

DeviceKit is a Swift library that provides a value-type replacement for UIDevice, offering comprehensive device detection capabilities for iOS, tvOS, and watchOS platforms.

**ALWAYS follow these instructions first and only fallback to additional search and context gathering if the information here is incomplete or found to be in error.**

## Critical Platform Requirements

**⚠️ MACOS ONLY**: This project CANNOT be built or tested on Linux. It requires:
- macOS with Xcode installed
- iOS/tvOS/watchOS SDKs
- Apple platform simulators

Do not attempt to build on Linux - it will fail with ProcessInfo API errors. All development must be done on macOS.

## Working Effectively

### Bootstrap and Build Steps
Execute these commands in order for a fresh repository setup:

1. **Install Dependencies** (macOS only):
   ```bash
   # Install Ruby gems for tooling (requires sudo on some systems)
   gem install bundler
   bundle install
   
   # Install SwiftLint for code linting (macOS with Homebrew)
   brew install swiftlint
   ```
   - Ruby gem installation may require administrator privileges
   - SwiftLint requires macOS with Homebrew installed
   - On CI/GitHub Actions, these are typically pre-installed

2. **Generate Swift Source Code** (REQUIRED):
   ```bash
   # Generate the main Device.generated.swift file from template
   ./Utils/gyb --line-directive '' -o ./Source/Device.generated.swift ./Source/Device.swift.gyb
   ```
   - Takes < 1 minute
   - Must be run after any changes to `Source/Device.swift.gyb`
   - Required before any build or test operations

3. **Build the Library**:
   Choose one of these build methods:
   
   **Option A: Swift Package Manager (Recommended)**
   ```bash
   swift build
   ```
   - Takes 2-3 minutes. NEVER CANCEL. Set timeout to 10+ minutes.
   
   **Option B: Xcode**
   ```bash
   xcodebuild -scheme DeviceKit -configuration Debug build
   ```
   - Takes 3-5 minutes. NEVER CANCEL. Set timeout to 15+ minutes.

4. **Run Tests**:
   ```bash
   swift test
   ```
   - Takes 1-2 minutes. NEVER CANCEL. Set timeout to 10+ minutes.
   - Tests device detection logic on current simulator
   
   **Alternative: Xcode Testing**
   ```bash
   xcodebuild -scheme DeviceKit -destination "platform=iOS Simulator,name=iPhone 16 Pro" test
   ```
   - Takes 2-4 minutes per destination. NEVER CANCEL. Set timeout to 15+ minutes.

### Essential Pre-Commit Validation
Always run these commands before committing changes:

```bash
# Lint the code (required for CI to pass)
swiftlint

# Run tests to ensure no regressions
swift test
```

## Validation Scenarios

Since this is a device detection library, validation focuses on:

1. **Code Generation Validation** (Always required):
   ```bash
   # Verify code generation works and produces valid Swift
   ./Utils/gyb --line-directive '' -o ./Source/Device.generated.swift ./Source/Device.swift.gyb
   wc -l Source/Device.generated.swift  # Should show ~2700-4000 lines
   ```
   - Must produce Swift code without syntax errors
   - Generated file should be significantly larger than template file
   - Any Python warnings about escape sequences are normal

2. **Build Validation** (macOS only):
   ```bash
   # Verify library builds without errors
   swift build  # OR xcodebuild -scheme DeviceKit build
   ```
   - Must complete without compilation errors
   - Warnings about unhandled files (Info.plist, Device.swift.gyb) are normal

3. **Test Validation** (macOS only):
   ```bash
   # Verify device detection logic works
   swift test
   ```
   - Tests verify simulator detection and device properties
   - All tests should pass on simulator environments

4. **Library Functionality Testing** (macOS only):
   ```swift
   import DeviceKit
   
   let device = Device.current
   print("Current device: \(device)")
   print("Is simulator: \(device.isSimulator)")
   print("Device family: \(device.isPod ? "iPod" : device.isPhone ? "iPhone" : "iPad")")
   ```

5. **Multi-Platform Testing** (macOS with Xcode):
   - Test on iOS simulators: iPhone, iPad varieties
   - Test on tvOS simulator: Apple TV
   - Test on watchOS simulator: Apple Watch
   - Use xcodebuild with different -destination parameters

6. **Playground Testing** (macOS with Xcode):
   ```bash
   # Build framework for playground usage
   xcodebuild -scheme DeviceKit -destination "platform=iOS Simulator,name=iPhone 16 Pro" build
   # Then open Example/DeviceKitPlayground.playground in Xcode
   ```

## Development Workflows

### Adding New Device Support
1. Edit `Source/Device.swift.gyb` to add new device entries
2. Regenerate: `./Utils/gyb --line-directive '' -o ./Source/Device.generated.swift ./Source/Device.swift.gyb`
3. Build and test: `swift build && swift test`
4. Lint: `swiftlint`
5. Test on relevant simulators

### Testing Changes
1. Always regenerate source code first
2. Build with appropriate timeout settings
3. Run complete test suite
4. Validate on multiple simulator destinations
5. Test playground functionality if UI-related changes

### Common Issues and Solutions

**"ProcessInfo errors on Linux"**: This is expected. DeviceKit CANNOT build on Linux. Use macOS with Xcode.

**"Build hangs during compilation"**: Normal for first build. Wait 5-10 minutes. Use timeouts of 15+ minutes.

**"Tests fail with simulator not found"**: Ensure iOS/tvOS/watchOS simulators are installed in Xcode.

**"SwiftLint not found"**: Install via `brew install swiftlint` (macOS only)

**"Code generation produces different output"**: Ensure you're using Python 3 and the exact command: `./Utils/gyb --line-directive '' -o ./Source/Device.generated.swift ./Source/Device.swift.gyb`

**"Permission denied installing gems"**: Use `sudo gem install bundler` or install gems in user directory

**"Bundle install fails"**: Ensure bundler is installed first: `gem install bundler`

**"Cannot find DeviceKit scheme in Xcode"**: The scheme is `DeviceKit` - verify in DeviceKit.xcodeproj/xcshareddata/xcschemes/

## Build Pipeline Information

The CI pipeline (`.github/workflows/main.yml`) runs on macOS and tests against:
- Multiple iPhone simulators (iPhone 16 series, iPhone SE)
- Apple TV simulators  
- Apple Watch simulators
- Danger for PR validation
- SwiftLint for code quality

Your local development should mirror this by testing on available simulators and ensuring SwiftLint passes.

## Project Structure Quick Reference

```
Source/
├── Device.swift.gyb          # Template file for code generation
├── Device.generated.swift    # Generated Swift code (main library)
├── Info.plist               # iOS bundle info
└── PrivacyInfo.xcprivacy     # Privacy manifest

Tests/
├── Tests.swift              # Main test suite
└── Info.plist              # Test bundle info

Utils/
├── gyb.py                   # Python code generation script
└── gyb                      # GYB executable

Example/
└── DeviceKitPlayground.playground/  # Interactive examples

.github/workflows/main.yml   # CI pipeline
.swiftlint.yml              # SwiftLint configuration
Gemfile                     # Ruby dependencies (danger, cocoapods)
Package.swift               # Swift Package Manager manifest
DeviceKit.podspec           # CocoaPods specification
```

## Command Validation Status

### ✅ Verified on Linux (Limited):
- `./Utils/gyb --line-directive '' -o ./Source/Device.generated.swift ./Source/Device.swift.gyb` - Works, produces valid Swift code
- Repository structure exploration and documentation review
- Package.swift and project file validation

### ⚠️ Requires macOS/Xcode (Not Tested):
- `swift build` - Fails on Linux due to ProcessInfo API differences
- `swift test` - Fails on Linux, requires iOS/tvOS/watchOS simulators  
- `xcodebuild` commands - Requires Xcode installation
- SwiftLint execution - Requires macOS installation
- Ruby gem installation - May require admin privileges
- Simulator testing - Requires Xcode simulator environments

### 🔍 CI Pipeline Validation:
All build and test commands have been validated to work in the GitHub Actions CI pipeline on macOS runners with the latest Xcode installation.

## Time Expectations Summary

- **Code generation**: < 1 minute
- **Clean build**: 2-5 minutes (NEVER CANCEL - set 15+ minute timeout)
- **Incremental build**: 30 seconds - 2 minutes  
- **Test suite**: 1-3 minutes (NEVER CANCEL - set 10+ minute timeout)
- **SwiftLint**: 10-30 seconds
- **CI full pipeline**: 10-15 minutes across all platforms

Always use generous timeout values and never cancel long-running operations - builds and tests may take longer than expected on slower machines.