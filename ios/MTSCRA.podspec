require "json"

package = JSON.parse(File.read(File.join(__dir__, "../../package.json")))

Pod::Spec.new do |s|
  s.name         = 'MTSCRA'
  s.version      = package["version"]
  s.summary      = "The Magtek iOS SDK"
  s.homepage     = 'https://www.magtek.com/'
  s.platform     = :ios
  s.source       = { :git => "https://github.com/monoku/react-native-magtek.git", :tag => "#{s.version}" }
  s.author       = ''
  s.frameworks = %w(AVFoundation AudioToolbox CoreBluetooth ExternalAccessory)
  s.libraries = %w()
  s.vendored_libraries = "libMTSCRA.a"
  s.source_files = "MTSCRA.h"
  s.public_header_files = "MTSCRA.h"
end
