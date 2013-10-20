require 'fuby/try'

using Fuby

describe Object do
  describe :try do
    describe [] do
      it "returns a proxy of self that either responds with the original method, or nil if method_missing" do

        obj = Object.new
        obj.try.this_method_does_not_exist.must_be_nil
        obj.try.class.must_equal Object

      end
    end
    describe [Proc] do
      it "calls the block_given with self, chaining each method as a try, returning the result" do

        arr = [1, 2, 3]
        arr.try { |arr| arr }.must_be_same_as arr
        arr.try { |arr| arr.length }.must_equal 3
        arr.try { |arr| arr.length.this_method_does_not_exist 5, 6, 7 }.must_be_nil
        arr.try { |arr| arr.this_method_does_not_exist.and_neither_does_this }.must_be_nil
        arr.try { |arr| 5 }.must_equal 5

      end
    end
  end
  describe :try? do
    describe [] do
      it "returns a proxy of self that either responds with the original method, or nil if method_missing" do

        obj = Object.new
        obj.try?.this_method_does_not_exist.must_be_same_as obj
        obj.try?.class.must_equal Object

      end
    end
    describe [Proc] do
      it "calls the block_given with self, chaining each method as a try, returning the result or the original object (if the result is nil)" do

        arr = [1, 2, 3]
        arr.try? { |arr| arr }.must_be_same_as arr
        arr.try? { |arr| arr.length }.must_equal 3
        arr.try? { |arr| arr.length.this_method_does_not_exist 5, 6, 7 }.must_be_same_as arr
        arr.try? { |arr| arr.this_method_does_not_exist.and_neither_does_this }.must_be_same_as arr
        arr.try? { |arr| 5 }.must_equal 5

      end
    end
  end
end
