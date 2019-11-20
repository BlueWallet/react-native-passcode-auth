require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))

Pod::Spec.new do |s|

  s.name         = "PasscodeAuth"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/brthrs/react-native-passcode-auth"
  s.license      = "MIT"
  s.author       = package["author"]
  s.platforms    = { :ios => "9.0", :tvos => "9.0" }
  s.source       = { :git => "https://github.com/brthrs/react-native-passcode-auth", :tag => "#{s.version}" }
  s.source_files = "{h,m}"

  s.dependency "React"

end