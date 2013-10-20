require 'fuby/equivalence'

using Fuby

describe Enumerable do
  describe "equivalence?" do
    it "returns `true` if all elements in `self` are `eql?`, `false` otherwise" do

      [1, 1, 1].equivalence?.must_equal true
      [1, 2, 3].equivalence?.must_equal false

    end
  end
end
