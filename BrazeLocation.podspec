Pod::Spec.new do |s|
  s.name              = 'BrazeLocation'
  s.version           = '5.8.1'
  s.summary           = 'Braze location library providing support for location analytics and geofence monitoring.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazelocation/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.8.1/BrazeLocation-CocoaPods.zip',
    :sha256 => '96df3d48e946f504b8382fd1d78e350d7d0540c56e3e0696da74a6de06a0beb3'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.tvos.deployment_target  = '10.0'

  s.vendored_framework      = 'BrazeLocation.xcframework'

  # Depends on BrazeKit because BrazeKit includes the internal _BrazeLocationClient symbols required
  # for linking against BrazeLocation.
  s.dependency 'BrazeKit', '5.8.1'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
