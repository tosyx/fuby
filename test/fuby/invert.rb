require 'fuby/invert'

using Fuby

describe Hash do
  describe "invert" do
    it "returns a Hash with its keys from self's values and values from self's keys" do

      { a:1, b:2 }.invert.must_equal 1 => :a, 2 => :b

    end
  end
end
describe Array do
  describe "invert" do
    it "returns a Hash with its keys from self's values and values from self's keys" do

      [:a, :b].invert.must_equal a: 0, b: 1

    end
  end
end
