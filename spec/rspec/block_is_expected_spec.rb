RSpec.describe Rspec::BlockIsExpected do
  it 'has a version number' do
    expect(Rspec::BlockIsExpected::VERSION).not_to be nil
  end

  describe '#block_is_expected' do
    context 'errors raised' do
      subject { Integer(nil) }
      it('can be tested') do
        puts "RubyVersion.to_s: #{RubyVersion.to_s}"
        skip_for(:versions => '1.8.7', :reason => 'Integer(nil) does not fail on 1.8.7')
        block_is_expected.to raise_error(TypeError)
      end
    end
    context 'execution' do
      let(:mutex) { Mutex.new }
      subject { mutex.lock }
      it('can change state') do
        expect(mutex.locked?).to eq(false)
        block_is_expected.to_not raise_error
        expect(mutex.locked?).to eq(true)
      end
    end
    context 'changed state' do
      let(:mutex) { Mutex.new }
      subject { mutex.lock }
      it('can be tested') do
        block_is_expected.to change { mutex.locked? }.from(false).to(true)
      end
    end
  end
end
