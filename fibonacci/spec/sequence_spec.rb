require_relative '../sequence'

RSpec.describe Sequence do
  describe '#fibonacci?' do
    context "when sequence has fewer than 2 elements" do
      let(:sequence) { described_class.new([0, 1]) }

      it "is truthy" do
        expect(sequence).to be_fibonacci
      end
    end

    context "when sequence conforms to the x[i] + x[i + 1] = x[i + 2] rule" do
      let(:sequences) do
        [
          [0, 1, 1, 2, 3, 5, 8, 13, 21, 34],
          [0, 0, 0, 0],
          [8, 13, 21, 34],
          [19, 20, 39, 59, 98]
        ]
      end

      it "is truthy" do
        sequences.each do |sequence|
          expect(described_class.new(sequence)).to be_fibonacci
        end
      end
    end

    context "when sequence does not conform to rule" do
      let(:sequences) do
        [
          [0, 1, 2, 3, 4],
          [0, 1, 1, 2, 3, 5, 8, 13, 21, 33],
          [34, 21, 13, 8, 5, 3, 2, 1, 1, 0]
        ]
      end

      it "is falsy" do
        sequences.each do |sequence|
          expect(described_class.new(sequence)).not_to be_fibonacci
        end
      end
    end
  end
end
