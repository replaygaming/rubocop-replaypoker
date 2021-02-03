require_relative 'lib/rubocop/replaypoker/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop-replaypoker"
  spec.version       = RuboCop::Replaypoker::VERSION
  spec.authors       = ["kvokka"]
  spec.email         = ["kvokka@yahoo.com"]

  spec.summary       = %q{Replaypoker rubocop config.}
  spec.description   = %q{Replaypoker rubocop config.}
  spec.homepage      = "https://github.com/replaygaming/rubocop-replaypoker"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/replaygaming/rubocop-replaypoker"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rubocop', '>= 1.9.0', '< 2.0'
  spec.add_runtime_dependency 'rubocop-rspec', '>= 2.2.0', '< 3.0'
end

