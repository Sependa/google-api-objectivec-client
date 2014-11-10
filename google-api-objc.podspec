Pod::Spec.new do |s|
  s.name         = "google-api-objc"
  s.version      = "0.3.0"
  s.summary      = "Google API SDK."
  s.homepage     = "http://code.google.com/p/google-api-objectivec-client/"
  s.license      = 'Apache License 2.0'
  s.author       = 'Google'
  s.frameworks   = 'Security', 'SystemConfiguration'
  s.requires_arc = false
  s.source       = { :git => "https://github.com/Taptera/google-api-objectivec-client.git", :tag => "#{s.version}"}

  s.ios.deployment_target = "6.0"
  s.osx.deployment_target = "10.9"

  s.subspec 'Core' do |sp| 
    sp.resources = 'Source/OAuth2/Touch/GTMOAuth2ViewTouch.xib'

    sp.source_files = 'Source/HTTPFetcher/*.{h,m}',
                 'Source/Networking/*.{h,m}',
                 'Source/Objects/*.{h,m}',
                 'Source/Utilities/*.{h,m}',
                 'Source/OAuth2/*.{h,m}',
                 'Source/OAuth2/Touch/*.{h,m}',
                 'Source/GTLDefines.h'           
                 
    sp.ios.exclude_files = 'Source/HTTPFetcher/Tests'
    sp.osx.exclude_files = 'Source/HTTPFetcher/Tests', 'Source/HTTPFetcher/GTMHTTPFetcherLogViewController.h', 'Source/HTTPFetcher/GTMHTTPFetcherLogViewController.m'
  end

  s.subspec 'Calendar' do |sp|
    sp.dependency 'google-api-objc/Core'

    sp.source_files = 'Source/Services/Calendar/Generated/*.{h,m}'
    sp.exclude_files = 'Source/Services/Calendar/Generated/GTLCalendar_Sources.m'
  end

  s.subspec 'Drive' do |sp|
    sp.dependency 'google-api-objc/Core'

    sp.source_files = 'Source/Services/Drive/Generated/*.{h,m}'
    sp.exclude_files = 'Source/Services/Drive/Generated/GTLDrive_Sources.m'
  end
end
