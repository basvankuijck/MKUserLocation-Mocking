Pod::Spec.new do |s|
  s.name         = "MKUserLocation-Mocking"
  s.version      = "0.0.1"
  s.summary      = "An easy way to mock your MKUserLocation."
  s.description  = "Ever found yourself struggling with mocking a userlocation when running UI tests or fastlane snapshot?"
  s.homepage     = "https://github.com/basvankuijck/MKUserLocation-Mocking"
  s.license      =  { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Bas van Kuijck" => "bas@e-sites.nl" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/basvankuijck/MKUserLocation-Mocking.git", :tag => "#{s.version}" }
  s.source_files = "Source/*.{h,m}"
  s.framework    = "MapKit"
  s.requires_arc = true
end
