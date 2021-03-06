Pod::Spec.new do |s|
  s.name         = 'UnionMobileStreaming'
  s.version      = '1.0.0'
  s.license      = {
:type => 'Proprietary',
:text => <<-LICENSE
      Copyright 2017 opencdnunion Ltd. All rights reserved.
      LICENSE
  }
  s.homepage     = 'https://github.com/ksvc/UnionMobileStreaming_iOS'
  s.authors      = { 'ksyun' => 'zengfanping@kingsoft.com' }
  s.summary      = 'UnionMobileStreaming for stream live video from ios mobile devices.'
  s.description  = <<-DESC
    * capture
    * process
    * encode
    * stream
  DESC
  s.platform     = :ios, '8.0'
  s.ios.library = 'z', 'iconv', 'stdc++.6', 'bz2'
  s.ios.frameworks   = [ 'AVFoundation', 'VideoToolbox', 'AudioToolbox']
  s.ios.deployment_target = '8.0'
  s.source = { 
    :git => 'https://github.com/ksvc/UnionMobileStreaming_iOS.git',
    :tag => 'v'+s.version.to_s
  }
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC -all_load' }

  s.source_files = [
    'prebuilt/include/**/*.h',
  ]
  s.vendored_library = ['prebuilt/libs/*.a']
  s.dependency 'GPUImage'
end
