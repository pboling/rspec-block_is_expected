require "rspec/core"
require "rspec/block_is_expected/matchers/not"
begin
  RSpec.configure do |c|
    c.include(Rspec::BlockIsExpected)
  end
  require "rspec/block_is_expected/shared_examples/block_does_not_raise_examples"
  require "rspec/block_is_expected/shared_examples/block_raises_error_examples"
rescue NameError => e
  # Rspec really should be loaded by now...
  warn "[#{e.class}] RSpec isn't loaded correctly: #{e.message}"
end
