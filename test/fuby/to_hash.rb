require 'fuby/to_hash'

using Fuby

describe Enumerable do
  describe "to_hash" do
    it "returns a Hash with the indicies of self as keys" do

      [1, 2, 3].to_hash.must_equal 0 => 1, 1 => 2, 2 => 3

    end
  end
end

describe Hash do
  describe "to_hash" do
    it "returns a copy of self" do

      { a:1 }.must_equal a:1

    end
  end
end
