require 'rspec'
require 'exercises'

describe "#my_uniq" do
  it "accepts an array as an argument" do
    a = [1,2,3]
    expect(my_uniq(a)).with(instance_of(Array))

  end
end