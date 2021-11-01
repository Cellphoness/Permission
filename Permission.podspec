Pod::Spec.new do |s|
  s.name          = 'Permission'
  s.version       = '3.1.2-bin-spec'
  s.license       = 'MIT'
  s.homepage      = 'https://github.com/delba/Permission'
  s.author        = { 'Damien' => 'damien@delba.io' }
  s.summary       = 'A unified API to ask for permissions on iOS'
  s.source        = { :git => 'https://github.com/delba/Permission.git', :tag => s.version }
  s.swift_version = '5.1'

  s.weak_framework = 'Speech'

  s.ios.deployment_target = '10.0'

  s.requires_arc = true

  s.default_subspec = 'Spec'

  s.subspec 'Spec' do |co|
    co.source_files = 'Source/**/*.{swift, h}'
    co.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_PHOTOS PERMISSION_SIRI PERMISSION_BLUETOOTH PERMISSION_LOCATION PERMISSION_MICROPHONE PERMISSION_CAMERA' }

  end

end
