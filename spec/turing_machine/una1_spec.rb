# frozen_string_literal: true

RSpec.describe TuringMachine::UNA1 do
  describe TuringMachine::UNA1::INSTRUCTIONS do
    it { is_expected.to be_a(Array) }
  end

  describe "#new" do
    let(:args) do
      Array.new(rand(1..10), 0).concat(Array.new(rand(1..20), 1)).concat(Array.new(rand(1..10), 0))
    end

    subject { TuringMachine::UNA1.new(args) }

    context "with improper arguments" do
      it "raises an ArgumentError with no arguments" do
        expect { TuringMachine::UNA1.new }.to raise_error(ArgumentError)
      end

      it "raises an ArgumentError with 'tape_sequence' = [0, 1]" do
        expect { TuringMachine::UNA1.new([0, 1]) }.to raise_error(ArgumentError)
      end

      it "raises an ArgumentError with 'tape_sequence' = [0, 1, 2]" do
        expect { TuringMachine::UNA1.new([0, 1, 2]) }.to raise_error(ArgumentError)
      end
    end

    context "with proper arguments" do
      it "returns a new instance" do
        expect(subject).to be_an_instance_of(TuringMachine::UNA1)
      end
    end
  end
end
