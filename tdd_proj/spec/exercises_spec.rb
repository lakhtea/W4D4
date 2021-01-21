require 'rspec'
require 'exercises'

describe "#my_uniq" do
  let(:arr) { [1, 2, 1, 3, 3] }

  it "removes duplicates" do
    expect(my_uniq(arr)).to eq([1,2,3])
  end

  it "does not modify original array" do
    expect(my_uniq(arr)).to_not be(arr)
  end
end

describe "#to_sum" do 
  let(:arr) { [-1, 0, 2, -2, 1] }

  it "return all zero sum pairs" do
    expect(to_sum(arr).all?{|pair| arr[pair[0]]+arr[pair[1]] == 0 }).to be true

  end

  it "returns pairs in order from lowest index" do
    expect(to_sum(arr).all?{|pair| pair[0] < pair[1]}).to be true
    
  end

  it "returns a 2D array" do
    expect(to_sum(arr).all?{|pair| pair.is_a?(Array)}).to be true
  end
end
# RSpec.describe "Constraining a message expectation using with" do
#   let(:dbl) { double }
#   before { expect(dbl).to receive(:foo).with(1, anything, /bar/) }

#   it "passes when the args match" do
#     dbl.foo(1, nil, "barn")
#   end

#   it "fails when the args do not match" do
#     dbl.foo(1, nil, "other")
#   end
# end