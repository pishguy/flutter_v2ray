#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_v2ray.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_v2ray'
  s.version          = '1.0.7'
  s.summary          = 'A plugin that allow you to making v2ray connection'
  s.description      = <<-DESC
  A plugin that allow you to making v2ray connection
                       DESC
  s.homepage         = 'https://github.com/blueboy-tm/flutter_v2ray'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ArshiaEihami' => 'arshiaihammi@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.vendored_frameworks = 'XRay.xcframework'
end
