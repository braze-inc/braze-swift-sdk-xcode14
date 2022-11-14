Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '5.6.2'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode14/releases/download/5.6.2/BrazePushStory-CocoaPods.zip',
    :sha256 => 'dc74f5f872ea59f0a7154612d3a792c95fa1749c7b21adc33f1b7febef782019'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'
end
