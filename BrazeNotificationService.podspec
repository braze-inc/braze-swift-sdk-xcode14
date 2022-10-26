Pod::Spec.new do |s|
  s.name              = 'BrazeNotificationService'
  s.version           = '5.6.0'
  s.summary           = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazenotificationservice/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.0/BrazeNotificationService-CocoaPods.zip',
    :sha256 => 'c725099a1419ba26affe8a36b9d14c6b8f6898a2f71692aa8d9c8d4a13610c2d'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'
end
