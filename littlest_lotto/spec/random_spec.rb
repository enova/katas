require_relative "../random"

def boolean?(obj)
  obj == !!obj
end

describe "#random" do
  it "returns a boolean" do
    expect(boolean?(random)).to be true
  end
end
