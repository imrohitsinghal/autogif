lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autogif/version'

Gem::Specification.new do |s|
  s.name          = "autogif"
  s.version       = AutoGif::VERSION
  s.date          = '2016-11-19'
  s.authors       = ["Rohit Singhal"]
  s.summary       = "Create gif for automated tests(Mobile or Web).Faster debugging and generating reports with embedded gif."
  s.description   = s.summary
  s.homepage      = "https://github.com/rohsin01"
  s.license       = "MIT"
  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler"
  s.add_development_dependency "rspec"
  s.add_dependency 'rmagick'
end
