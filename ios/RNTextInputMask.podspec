require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))

Pod::Spec.new do |s|
  s.name         = "RNTextInputMask"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.author       = { "Bebnev Anton" => "bambr.ab@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => package["repository"]["url"] }
  s.source_files = "ios/**/*.{h,m,swift}"

  s.dependency "React"

end