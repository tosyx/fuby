require 'fuby/deep_each'

using Fuby

describe Array do
  describe "deep_each" do
    it "returns an enumerator that yields all leaf elements of `self`" do

      [[1, 2], [3, [4, 5]]].deep_each.to_a.must_equal [[1, 0, 0], [2, 1, 0], [3, 0, 1], [4, 0, 1, 1], [5, 1, 1, 1]]

    end
  end
  describe "deep_each &block" do
    it "traverses `self` and all nested instances of `self.class` with the given block" do

      result = []
      [[1, 2], [3, [4, 5]]].deep_each { |e, *path| result << e }
      result.must_equal [1, 2, 3, 4, 5]

    end
  end
end
