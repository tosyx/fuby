require 'fuby/drop'

using Fuby

describe Array do
  describe "drop number = 1" do
    it "returns a new array dropping the initial number elements" do

      xs = [1, 2, 3, :four]

      xs.drop.must_equal [2, 3, :four]
      xs.drop(2).must_equal [3, :four]

    end
  end
  describe "drop! predicate = Proc.new" do
    it "dropping the initial elements that don't match the given predicate, returning self" do

      xs = [1, 2, 3, :four]

      xs.drop!.must_equal xs
      xs.must_equal [2, 3, :four]
      xs.drop! 2
      xs.must_equal [:four]

    end
  end
end
