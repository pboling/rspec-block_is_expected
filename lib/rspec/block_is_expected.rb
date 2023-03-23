require 'rspec/block_is_expected/version'
require 'rspec/block_is_expected/rspec'

module Rspec
  # Namespace of this library
  module BlockIsExpected
    def block_is_expected
      expect { subject }
    end
  end
end
