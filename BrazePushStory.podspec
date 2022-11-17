Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '5.6.3'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.3/BrazePushStory-CocoaPods.zip',
    :sha256 => 'f9df2275208b9109d43da7c18100d74e11bd17360d944fba092372a3b354c93c'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'
end
