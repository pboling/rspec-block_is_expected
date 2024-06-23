require "rspec/core"
require "rspec/block_is_expected/matchers/not"

RSpec.configure do |c|
  c.include(Rspec::BlockIsExpected)
end
require "rspec/block_is_expected/shared_examples/block_does_not_raise_examples"
require "rspec/block_is_expected/shared_examples/block_raises_error_examples"
