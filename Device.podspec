Pod::Spec.new do |s|
  s.name         = 'Device'
  s.version      = '1.0.0'
  s.summary      = 'Device is a µ-framework that provides a value-type wrapper of UIDevice.'

  s.description             = <<-DESC
                                `Device` is a value-type wrapper and extension of [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/).
                              DESC

  s.homepage                = 'https://github.com/dennisweissmann/Device'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = 'Dennis Weissmann'
  s.social_media_url        = 'https://twitter.com/dennis_weissman'

  s.requires_arc            = true
  s.ios.deployment_target   = '8.0'
  s.tvos.deployment_target  = '9.0'

  s.source                  = { :git => 'https://github.com/dennisweissmann/Device.git', :tag => s.version.to_s }
  s.source_files            = 'Device_iOS', 'Device_tvOS', 'SharedCode'
end
