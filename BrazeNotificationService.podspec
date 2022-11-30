Pod::Spec.new do |s|
  s.name              = 'BrazeNotificationService'
  s.version           = '5.6.4'
  s.summary           = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazenotificationservice/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.4/BrazeNotificationService-CocoaPods.zip',
    :sha256 => 'b918ea9143ae193db505534157be6e51d92301445bdc3746624d7b5e6ae67e55'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'
end
