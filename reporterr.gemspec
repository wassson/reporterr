require_relative "lib/reporterr/version"

Gem::Specification.new do |spec|
  spec.name        = "reporterr"
  spec.version     = Reporterr::VERSION
  spec.authors     = ["Austin Wasson"]
  spec.email       = ["austinpwasson@gmail.com"]
  spec.homepage    = "https://github.com/wassson/reporterr"
  spec.summary     = "Catch, capture, and view errors within your Rails app."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.2"
  spec.add_dependency "tailwindcss-rails"
end
