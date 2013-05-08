require 'fuby/try_eval'

using Fuby

describe Object do
  describe :try_eval do
    describe [Proc] do
      it "evals the block_given in self, chaining each method as a try, returning the result" do

        arr = [1, 2, 3]
        arr.try_eval { self }.must_be_same_as arr
        arr.try_eval { length }.must_equal 3
        arr.try_eval { length.this_method_does_not_exist 5, 6, 7 }.must_be_nil
        arr.try_eval { this_method_does_not_exist.and_neither_does_this }.must_be_nil
        arr.try_eval { 5 }.must_equal 5

      end
    end
  end
  describe :try_eval? do
    describe [Proc] do
      it "evals the block_given in self, chaining each method as a try, returning the result or the original object (if the result is nil)" do

        arr = [1, 2, 3]
        arr.try_eval? { self }.must_be_same_as arr
        arr.try_eval? { length }.must_equal 3
        arr.try_eval? { length.this_method_does_not_exist 5, 6, 7 }.must_be_same_as arr
        arr.try_eval? { this_method_does_not_exist.and_neither_does_this }.must_be_same_as arr
        arr.try_eval? { 5 }.must_equal 5

      end
    end
  end
end
