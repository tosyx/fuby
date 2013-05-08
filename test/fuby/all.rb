require 'fuby/all'

using Fuby

describe Enumerable do
  describe "all?" do
    it "the behaviour of `all?` is modified in order to allow object (as well as Proc) arguments" do

      [1, 2, 3].all?.must_be_instance_of Method
      [1, 2, 3].all?.call(String).must_equal false
      [1, 2, 3].all?(Integer).must_equal true

    end
  end
end
