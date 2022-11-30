Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '5.6.4'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.4/BrazePushStory-CocoaPods.zip',
    :sha256 => '0f133ead6b0ee5efa17b9259a6cddab69717e115442f3b6c5441276c42d1e9ea'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'
end
