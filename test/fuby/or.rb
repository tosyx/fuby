require 'fuby/or'

using Fuby

describe Hash do
  describe "| that" do
    it "creates a new hash by merging `self` into `that`" do

      ({ a:1 } | { b:2 }).must_equal a:1, b:2

    end
    it "should preserve key order" do

      ({ a:1 } | { b:2 }).keys.first.must_equal :a
      ({ b:2 } | { a:1 }).keys.first.must_equal :b

    end
  end
end
