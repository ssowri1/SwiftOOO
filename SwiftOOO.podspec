#
#  Be sure to run `pod spec lint SwiftOOO.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

spec.name         = "SwiftOOO"
spec.version      = "0.0.8"
spec.summary      = "A CocoaPods library written in Swift."

spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
DESC

spec.homepage     = "https://github.com/ssowri1/SwiftOOO"
spec.license      = { :type => "MIT", :file => "LICENSE" }
spec.author             = { "ssowri1" => "ssowri1@gmail.com" }

spec.ios.deployment_target = "12.1"
spec.swift_version = "4.2"

spec.source       = { :git => "https://github.com/ssowri1/SwiftOOO.git", :tag => "#{spec.version}" }

spec.source_files  = "SwiftOOO/**/*.{h,m,swift}"

spec.dependency "JSONKit", "~> 1.4"
spec.dependency "Zip", "~> 1.1"


end
