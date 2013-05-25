require 'fuby/to_boolean'

using Fuby

describe Numeric do
  describe "to_boolean" do
    it "converts self to a boolean according to the common interpretation" do

      0.to_boolean.must_equal false
      1.to_boolean.must_equal true
      +0.1.to_boolean.must_equal true
      -0.1.to_boolean.must_equal false
    end
  end
end

describe String do
  describe "to_boolean" do
    it "converts self to a boolean according to the common interpretation" do

      "1".to_boolean.must_equal true
      "t".to_boolean.must_equal true
      "true".to_boolean.must_equal true
      "TRUE".to_boolean.must_equal true
      "yes".to_boolean.must_equal true
      "y".to_boolean.must_equal true
      "goo".to_boolean.must_equal false

    end
  end
end
