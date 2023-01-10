Pod::Spec.new do |s|
  s.name              = 'BrazeUI'
  s.version           = '5.8.1'
  s.summary           = 'Braze-provided user interface library for In-App Messages and Content Cards.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = { :git => 'https://github.com/braze-inc/braze-swift-sdk-xcode14.git', :tag => '5.8.1' }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.static_framework        = true

  s.source_files            = 'Sources/BrazeUI/**/*.swift'
  s.resource_bundles        = { 'BrazeUI' => 'Sources/BrazeUI/Resources/**/*' }

  s.dependency 'BrazeKit', '5.8.1'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
