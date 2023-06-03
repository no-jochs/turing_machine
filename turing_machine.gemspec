# frozen_string_literal: true

require_relative "lib/turing_machine/version"

Gem::Specification.new do |spec|
  spec.name = "turing_machine"
  spec.version = TuringMachine::VERSION
  spec.authors = ["John Ochs"]
  spec.email = ["code@johnochs.io"]

  spec.summary = "A Turing-Machine Ruby class uses instruction set and tape-state sequence to operate."
  spec.description = "A Turing-Machine implementation that accepts an instruction-set as outlined in \"The Emperor's New Mind\" by Roger Penrose, pp. 46-58."
  spec.homepage = "https://rubygems.org/gems/turing_machine"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/no-jochs/turing_machine"
  spec.metadata["changelog_uri"] = spec.metadata["source_code_uri"] + "/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rspec", "~> 2.12.0"
  spec.add_development_dependency "rubocop", "~> 1.4.1"
  spec.add_development_dependency "pry", "~> 0.11.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
