
Pod::Spec.new do |s|
  s.name             = 'flutter_module_spec'
  s.version          = '0.2.0'
  s.summary          = 'A short description of flutter_module_spec.'

  s.homepage         = 'https://github.com/zhanghua19860221/flutter_module_spec'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhanghua' => '3051942353@qq.com' }
  s.source           = { :git =>'https://github.com/zhanghua19860221/flutter_module_spec.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  arr = Array.new
  arr.push('flutter_module_spec/ios_frameworks/**/*.framework')
  s.ios.vendored_frameworks = arr
    
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


  # s.source_files = 'flutter_module_spec/Classes/**/*'
  
  # s.resource_bundles = {
  #   'flutter_module_spec' => ['flutter_module_spec/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
