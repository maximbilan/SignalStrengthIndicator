Pod::Spec.new do |s|
s.name         = "SignalStrengthIndicator"
s.version      = "0.1.1"
s.summary      = "Signal Strength Indicator"
s.description  = "Indicator shows a level of connection, like as default iOS indicator of cellular network"
s.homepage     = "https://github.com/maximbilan/SignalStrengthIndicator"
s.license      = { :type => "MIT" }
s.author       = { "Maxim Bilan" => "maximb.mail@gmail.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/maximbilan/SignalStrengthIndicator.git", :tag => s.version.to_s }
s.source_files = "Classes", "SignalStrengthIndicator/Sources/**/*.{swift}"
s.requires_arc = true
end