#
#  Be sure to run `pod spec lint ZanoWallet.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

#
#  Be sure to run `pod spec lint ZanoWallet.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "ZanoWallet"
  s.version      = "1.0.0"
  s.summary      = "Zano Wallet SDK"
  s.description  = <<-DESC
                   A wallet SDK for Zano.
                   DESC
  s.homepage     = "https://your_project_homepage.com"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Your Name" => "youremail@domain.com" }
  s.source       = { :git => "https://github.com/jkatayama/zano_native_lib_package_ios.git", :tag => "#{s.version}" }
  s.platform     = :ios, "14.0"

  # Specify the source files and headers
  s.source_files  = "Sources/ZanoWallet/**/*.{h,m,cpp,swift}"

  # Specify the public headers
  s.public_header_files = "Sources/ZanoWallet/include/*.h"

  # Add library dependencies
  s.vendored_frameworks = "Dependencies/*.xcframework"

  # C++ and Swift interoperability settings
  s.pod_target_xcconfig = {
    "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/Dependencies",
    "OTHER_CFLAGS" => "-DVARIABLE -DNDEBUG=1"
  }

  # Linker flags if necessary
  s.libraries = "z", "currency_core", "crypto_", "wallet", "common", "boost", "ssl", "crypto"

  # Specify Swift version
  s.swift_version = "5.0"

  # Dependencies for tests
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = "Tests/**/*.swift"
  end
end
