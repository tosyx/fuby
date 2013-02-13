require 'fuby/to_pred'

using Fuby

describe Module do
  describe "to_pred" do
    it "returns a Proc that returns whether its argument kind_of? self" do

      Symbol.to_pred.call(:foo).must_equal true
      Symbol.to_pred.call('foo').must_equal false

    end
  end
end

describe Regexp do
  describe "to_pred" do
    it "returns a Proc that returns whether its argument matches self" do

      /foo/.to_pred.call(:foo).must_equal true
      /foo/.to_pred.call('foo').must_equal true

    end
  end
end
