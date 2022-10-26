Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '5.6.0'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.0/BrazePushStory-CocoaPods.zip',
    :sha256 => '258e9a888fee62cc66904f5dbcf94518137c0ba1951cbd46150f800a0af62a47'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'
end
