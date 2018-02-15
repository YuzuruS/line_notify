
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "line_notify/version"

Gem::Specification.new do |spec|
  spec.name          = "line_notify"
  spec.version       = LineNotify::VERSION
  spec.authors       = ["YuzuruS"]
  spec.email         = ["navitima@gmail.com"]

  spec.summary       = "Client for the LINE notify API"
  spec.description   = "Client for the LINE notify API"
  spec.homepage      = "https://github.com/YuzuruS/line_notify"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "terminal-notifier"
  spec.add_development_dependency "terminal-notifier-guard"
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'ffi', '1.9.18'
end
