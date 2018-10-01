require 'rspec/core'
begin
  RSpec.configure do |c|
    c.include Rspec::BlockIsExpected
  end
rescue NameError
  # Rspec really should be loaded by now...
end
