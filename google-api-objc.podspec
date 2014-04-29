Pod::Spec.new do |s|
  s.name         = "google-api-objc"
  s.version      = "0.2.1"
  s.summary      = "Google API SDK."
  s.homepage     = "http://code.google.com/p/google-api-objectivec-client/"
  s.license      = 'Apache License 2.0'
  s.author       = 'Google'
  
  s.source       = { :git => "https://github.com/Taptera/google-api-objectivec-client.git", :tag => "#{s.version}"}
  s.ios.deployment_target = "5.0"
  
  s.resources = 'Source/OAuth2/Touch/GTMOAuth2ViewTouch.xib'

  s.source_files = 'Source/HTTPFetcher/*.{h,m}',
                   'Source/Networking/*.{h,m}',
                   'Source/Objects/*.{h,m}',
                   'Source/Utilities/*.{h,m}',
                   'Source/Services/Calendar/Generated/*.{h,m}',
                   'Source/OAuth2/*.{h,m}',
                   'Source/OAuth2/Touch/*.{h,m}',
                   'Source/GTLDefines.h'           
  s.exclude_files = 'Source/HTTPFetcher/Tests', 'Source/Services/Calendar/Generated/GTLCalendar_Sources.m'

  s.frameworks   = 'Security', 'SystemConfiguration'
  s.requires_arc = false
end
