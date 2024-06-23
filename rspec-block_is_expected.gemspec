# NOTE: Have to use __FILE__ until Ruby 1.x support is dropped
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rspec/block_is_expected/version"

Gem::Specification.new do |spec|
  spec.name = "rspec-block_is_expected"
  spec.version = Rspec::BlockIsExpected::VERSION
  spec.authors = ["Peter Boling"]
  spec.email = ["peter.boling@gmail.com"]

  # See CONTRIBUTING.md
  spec.cert_chain = ["certs/pboling.pem"]
  spec.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $PROGRAM_NAME.end_with?("gem")

  spec.summary = "Simplify testing of blocks in RSpec via block_is_expected"
  spec.description = %[subject { Integer(nil) }; it('raises') { block_is_expected.to raise_error(TypeError) }]
  spec.homepage = "https://github.com/pboling/rspec-block_is_expected"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.2"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["wiki_uri"] = "#{spec.homepage}/wiki"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir[
    # Splats (alphabetical)
    "lib/**/*.rb",
    # Files (alphabetical)
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "rubocop.yml",
    "SECURITY.md"
  ]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development Dependencies
  spec.add_development_dependency("appraisal", "~> 2.2")                      # >= Ruby 0.0
  spec.add_development_dependency("rake", ">= 10.5")                          # >= Ruby 1.8.7
  spec.add_development_dependency("rspec", ">= 3")                            # >= Ruby 0.0
  spec.add_development_dependency("rspec-pending_for", "~> 0.1", ">= 0.1.16") # >= Ruby 0.0
end
