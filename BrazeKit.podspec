Pod::Spec.new do |s|
  s.name              = 'BrazeKit'
  s.version           = '5.8.1'
  s.summary           = 'Braze Main SDK library providing support for analytics and push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.8.1/BrazeKit-CocoaPods.zip',
    :sha256 => 'b4b5572d9502b373015e86159da5fe9b9f52b89786d302b5698e249cdfff991a'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.tvos.deployment_target  = '10.0'

  s.vendored_framework      = 'BrazeKit.xcframework'
  s.resource_bundles        = { 'BrazeKit' => 'Sources/BrazeKitResources/Resources/**/*' }

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
