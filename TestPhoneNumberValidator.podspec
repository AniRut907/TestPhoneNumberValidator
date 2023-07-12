#
#  Be sure to run `pod spec lint TestPhoneNumberValidator.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  

  s.name         = 'TestPhoneNumberValidator'
  s.version      = '0.0.10'
  s.summary      = 'TestPhoneNumberValidator will validate email id and phone number'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
s.description  = <<-DESC
'this is project we developed to validate email id  and phone number with all the scenario'
                   DESC

  s.homepage     = 'https://github.com/AniRut907/TestPhoneNumberValidator'
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'AniRut907' => 'AniRut907@gmail.com' }
  s.source       = { :git => 'https://github.com/AniRut907/TestPhoneNumberValidator.git', :tag => s.version.to_s }

 s.ios.deployment_target = '13.0'

  s.source_files  = "TestPhoneNumberValidator/**/*.{swift,otf,png,jpeg,jpg,storyboard,xib,xcassets}"
  s.resource_bundles = {
    'TestPhoneNumberValidator' => ['TestPhoneNumberValidator/**/*.{storyboard}']
  }

  s.swift_version = '5.0'
  s.platforms = {
      "ios":"13.0"
  }
 


end
