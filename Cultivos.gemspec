# frozen_string_literal: true

require_relative "lib/Cultivos/version"

Gem::Specification.new do |spec|
  spec.name          = "Cultivos"
  spec.version       = Cultivos::VERSION
  spec.authors       = ["Carlos Garc\xC3\xADa Gonz\xC3\xA1lez"]
  spec.email         = ["alu0100898026@ull.edu.es"]

  spec.summary       = "Gema encargada de representar distintos tipos de Cultivos."
  spec.description   = "Gema que representa diferentes tipos de vegetales, hortalizas y frutas, y todo tipo de datos asociados al cultivo de las mismas."
  spec.homepage      = "https://github.com/carlos016/Examen.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/carlos016/Examen.git"
  spec.metadata["changelog_uri"] = "https://github.com/carlos016/Examen.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #set dependencies
  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "coveralls"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
