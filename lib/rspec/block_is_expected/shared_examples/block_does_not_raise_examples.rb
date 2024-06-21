RSpec.shared_examples_for("block_is_expected to not raise") do
  it "does not raise error" do
    block_is_expected.not_to(raise_error)
  end
end
