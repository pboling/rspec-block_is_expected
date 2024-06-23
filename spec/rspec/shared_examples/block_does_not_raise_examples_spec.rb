RSpec.describe "block_is_expected to not raise works" do # rubocop:disable RSpec/DescribeClass:
  subject { Integer("1") }

  it_behaves_like "block_is_expected to not raise"
end
