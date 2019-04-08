Pod::Spec.new do |s|
  s.swift_version = "5.0"
  s.name         = "Sucrose"
  s.version      = "3.5.0"
  s.summary      = "🍬 Everyday sugar"
  s.description  = "Collection of handy methods & objects"

  s.homepage     = "https://github.com/pedrommcarrasco/Sucrose"
  s.license = { :type => 'MIT', :file => 'LICENSE' }

  s.author    = "Pedro Carrasco"
  s.social_media_url   = "http://twitter.com/pedrommcarrasco"

  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/pedrommcarrasco/Sucrose.git", :tag => s.version.to_s }

  s.source_files  = "Sucrose/**/*"
  s.exclude_files = "Sucrose/*.plist"
end
