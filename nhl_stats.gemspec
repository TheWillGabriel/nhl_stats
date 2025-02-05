lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nhl_stats/version"

Gem::Specification.new do |spec|
  spec.name          = "nhl_stats"
  spec.version       = NHLStats::VERSION
  spec.authors       = ["Susan Wright"]
  spec.email         = ["wright1@ualberta.ca"]

  spec.summary       = "Gem wrapping the undocumented NHL stats API"
  spec.description   = "Gem wrapping the undocumented NHL stats API"
  spec.homepage      = "https://shrugguy.com"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://shrugguy.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://shrugguy.com"
  spec.metadata["changelog_uri"] = "https://shrugguy.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "json"
end
