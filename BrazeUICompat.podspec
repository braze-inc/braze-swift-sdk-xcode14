Pod::Spec.new do |s|
  s.name              = 'BrazeUICompat'
  s.version           = '5.8.1'
  s.summary           = 'Compatibility UI library for users migrating from AppboyUI.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazeui/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = { :git => 'https://github.com/braze-inc/braze-swift-sdk-xcode14.git', :tag => '5.8.1' }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.static_framework        = true

  s.source_files            = 'Sources/BrazeUICompat/ABK*/**/*.{h,m}'
s.public_header_files     = 'Sources/BrazeUICompat/ABK*/**/*.h'
  s.resource_bundles        = { 'BrazeUICompat' => 'Sources/BrazeUICompat/*/Resources/**/*.*' }

  s.dependency 'BrazeKitCompat', '5.8.1'
  s.dependency 'SDWebImage', '>= 5.8.2', '< 6'

  s.user_target_xcconfig    = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  s.pod_target_xcconfig     = {
    'DEFINES_MODULE' => 'YES',
    'OTHER_CFLAGS' => '-Wno-deprecated-declarations -Wno-deprecated-implementations'
  }
end
