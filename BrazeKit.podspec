Pod::Spec.new do |s|
  s.name              = 'BrazeKit'
  s.version           = '5.6.3'
  s.summary           = 'Braze Main SDK library providing support for analytics and push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.3/BrazeKit-CocoaPods.zip',
    :sha256 => '74ecb23dd3123ae3498888dd15bbd56745dbbb81e06e80fe553b72bec40c02be'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.tvos.deployment_target  = '10.0'

  s.vendored_framework      = 'BrazeKit.xcframework'
  s.resource_bundles        = { 'BrazeKit' => 'Sources/BrazeKitResources/Resources/**/*' }
end
