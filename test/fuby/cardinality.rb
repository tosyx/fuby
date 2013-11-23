require 'fuby/cardinality'

using Fuby

describe Object do
  describe "cardinality" do
    it "returns 1 by default" do

      Object.new.cardinality.must_equal 1

    end
  end
end
describe NilClass do
  describe "cardinality" do
    it "returns 0" do

      nil.cardinality.must_equal 0

    end
  end
end
describe Enumerable do
  describe "cardinality" do
    it "returns the size of `self`" do

      {}.cardinality.must_equal 0
      { a:1 }.cardinality.must_equal 1
      [].cardinality.must_equal 0
      [1, 2, 3].cardinality.must_equal 3

    end
  end
end
