require 'fuby/intercept'

using Fuby

describe Module do
  describe "intercept &block" do
    it "creates a proxy of self, with method_missing defined from the given &block" do

      object = {}
      object.intercept { |key, *sig, &blk| self }.foo.must_equal object
      object.intercept { |key, *sig, &blk| key }.foo.must_equal :foo
      object.intercept { |key, *sig, &blk| sig }.foo(1, 2, 3).must_equal [1, 2, 3]

    end
  end
end
