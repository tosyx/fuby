require 'fuby/each_with_index_or_key'

using Fuby

describe Array do
  describe "each_with_index_or_key &block" do
    it "is equivalent to each_with_index" do

      [1, 2, 3].each_with_index_or_key.to_a.must_equal [[1, 0], [2, 1], [3, 2]]

    end
  end
end
describe Hash do
  describe "each_with_index_or_key &block" do
    it "enumerates self with a block taking the element and key as arguments" do

      { a:1, b:2 }.each_with_index_or_key.to_a.must_equal [[1, :a], [2, :b]]

    end
  end
end
