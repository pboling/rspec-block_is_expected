RSpec.shared_examples_for("block_is_expected to raise error") do |*error_args|
  it "raises error #{error_args.inspect}" do
    block_is_expected.to(raise_error(*error_args))
  end
end
