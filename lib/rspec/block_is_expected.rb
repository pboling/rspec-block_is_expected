require 'rspec/block_is_expected/version'
require 'rspec/block_is_expected/rspec'

module Rspec
  module BlockIsExpected
    def block_is_expected
      expect { subject }
    end
  end
end
