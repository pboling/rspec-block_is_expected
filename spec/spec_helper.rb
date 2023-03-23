require 'bundler/setup'

require 'rspec/pending_for'

begin
  require 'simplecov'
  SimpleCov.start
rescue LoadError
  # Not loading simplecov for Ruby < 2.2
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

require 'rspec/block_is_expected'
