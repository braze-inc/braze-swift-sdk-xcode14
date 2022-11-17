Pod::Spec.new do |s|
  s.name              = 'BrazeNotificationService'
  s.version           = '5.6.3'
  s.summary           = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazenotificationservice/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.3/BrazeNotificationService-CocoaPods.zip',
    :sha256 => '02bde42b7e733c6e4be768d717519f31b7b33c02ec635bee345f3df2cf9190f4'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'
end
