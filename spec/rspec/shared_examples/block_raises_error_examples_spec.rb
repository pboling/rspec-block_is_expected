RSpec.describe "block_is_expected to raise error works" do # rubocop:disable RSpec/DescribeClass:
  subject { raise TypeError, "Blah-blah" }

  it_behaves_like "block_is_expected to raise error", TypeError, "Blah-blah"
end
