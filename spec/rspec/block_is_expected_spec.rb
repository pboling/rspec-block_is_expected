RSpec.describe Rspec::BlockIsExpected do
  it 'has a version number' do
    expect(Rspec::BlockIsExpected::VERSION).not_to be nil
  end

  describe '#block_is_expected' do
    context 'when errors raised' do
      subject { Integer(nil) }

      it('can be tested') do
        puts "RubyVersion.to_s: #{RubyVersion}"
        skip_for(:versions => '1.8.7', :reason => 'Integer(nil) does not fail on 1.8.7')
        block_is_expected.to raise_error(TypeError)
      end
    end

    context 'with execution' do
      subject { mutex.lock }

      let(:mutex) { Mutex.new }

      it('can change state') do
        expect(mutex.locked?).to eq(false)
        block_is_expected.not_to raise_error
        expect(mutex.locked?).to eq(true)
      end
    end

    context 'with changed state' do
      subject { mutex.lock }

      let(:mutex) { Mutex.new }

      it('can be tested') do
        block_is_expected.to change(mutex, :locked?).from(false).to(true)
      end
    end
  end
end
