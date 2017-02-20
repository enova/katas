require_relative "../display"

def fixture_path(seconds)
  File.join(File.dirname(__FILE__), "fixtures", "#{seconds}_output.txt")
end

describe Display do
  let(:display) { described_class.new(360) }

  describe "#initialize" do
    it "accepts a whole number of seconds" do
      expect { display }.not_to raise_error
    end
  end

  describe "#to_s" do
    let(:expected) do
      [0, 275, 360, 10_872].each_with_object({}) do |seconds, results|
        results[seconds] = File.open(fixture_path(seconds), &:read)
      end
    end

    it "returns a string with the necessary digits" do
      expected.each do |seconds, result|
        expect(described_class.new(seconds).to_s).to eq(result)
      end
    end
  end
end
