Pod::Spec.new do |s|
  s.name              = 'BrazeNotificationService'
  s.version           = '5.6.2'
  s.summary           = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazenotificationservice/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.2/BrazeNotificationService-CocoaPods.zip',
    :sha256 => 'd8f78ab6c041e27bfbc4333600e3a10f41b46117541b4fe66fb81f2ac4663089'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'
end
