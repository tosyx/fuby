require 'fuby/any'

using Fuby

describe Enumerable do
  describe "any?" do
    it "the behaviour of `any?` is modified in order to allow object (as well as Proc) arguments" do

      [1, 2, 3].any?.must_be_instance_of Method
      [1, 2, 3].any?.call(String).must_equal false
      [1, 2, 3].any?(Integer).must_equal true

    end
  end
end
