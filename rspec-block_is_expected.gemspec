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

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'rspec-core'

  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', ['>= 10.0', '<= 13']
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'wwtd'
end
