# NOTE: Have to use __FILE__ until Ruby 1.x support is dropped
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/block_is_expected/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-block_is_expected'
  spec.version       = Rspec::BlockIsExpected::VERSION
  spec.authors       = ['Peter Boling']
  spec.email         = ['peter.boling@gmail.com']

  spec.summary       = 'Simplify testing of blocks in RSpec via block_is_expected'
  spec.description   = %[subject { Integer(nil) }; it('raises') { block_is_expected.to raise_error(TypeError) }]
  spec.homepage      = 'https://github.com/pboling/rspec-block_is_expected'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata['bug_tracker_uri'] = "#{spec.homepage}/issues"
  spec.metadata['documentation_uri'] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata['funding_uri'] = 'https://liberapay.com/pboling'
  spec.metadata['wiki_uri'] = "#{spec.homepage}/wiki"
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'rspec-core'

  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rspec-pending_for', '~> 0.1'
  spec.add_development_dependency 'wwtd'
end
