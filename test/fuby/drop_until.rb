require 'fuby/drop_until'

using Fuby

describe Array do
  describe "drop_until predicate = Proc.new" do
    it "returns a new array dropping the initial elements that don't match the given predicate" do

      xs = [1, 2, 3, :four]

      xs.drop_until { false }.must_equal []
      xs.drop_until(Symbol).must_equal [:four]

    end
  end
  describe "drop_until! predicate = Proc.new" do
    it "dropping the initial elements that don't match the given predicate, returning self" do

      xs = [1, 2, 3, :four]

      xs.drop_until!(Symbol).must_equal xs
      xs.must_equal [:four]

    end
  end
end
