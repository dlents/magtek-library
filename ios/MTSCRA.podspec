require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))

Pod::Spec.new do |s|
  s.name         = 'MTSCRA'
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios
  s.source       = { :git => package["repository"]["url"], :branch => "master" }
  s.author       = ''
  s.frameworks = %w(AVFoundation AudioToolbox CoreBluetooth ExternalAccessory)
  s.libraries = %w()
  s.vendored_libraries = "libMTSCRA.a"
  s.source_files = "MTSCRA.h"
  s.public_header_files = "MTSCRA.h"
end
