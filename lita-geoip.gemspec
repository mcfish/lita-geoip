Gem::Specification.new do |spec|
  spec.name          = "lita-geoip"
  spec.version       = "0.0.1"
  spec.authors       = ["mcfish"]
  spec.email         = ["ata.1213@gmail.com"]
  spec.description   = %q{A Lita handler GeoIP country}
  spec.summary       = %q{A Lita handler GeoIP country}
  spec.homepage      = "https://github.com/mcfish/lita-geoip"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "geoip"

  spec.add_runtime_dependency "lita", ">= 4.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
