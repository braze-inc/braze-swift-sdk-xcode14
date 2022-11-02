Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '5.6.1'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-mfp-xcode14/releases/download/5.6.1/BrazePushStory-CocoaPods.zip',
    :sha256 => '931bb9ab55de39166f3e79ad9bd214c80360ccef12c237f563410682ef2ce598'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'
end
