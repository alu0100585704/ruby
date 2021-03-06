require_relative 'lib/menu/version'

Gem::Specification.new do |spec|
  spec.name          = "menu"
  spec.version       = Menu::VERSION
  spec.authors       = ["Juan Siverio"]
  spec.email         = ["alu0100585704@ull.edu.es"]

  spec.summary       = %q{http://mygemserver.com}
  spec.description   = %q{http://mygemserver.com}
  spec.homepage      = "http://mygemserver.com"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://mygemserver.com"
  spec.metadata["changelog_uri"] = "http://mygemserver.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
