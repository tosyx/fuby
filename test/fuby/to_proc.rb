require 'fuby/to_proc'

using Fuby

describe Array do
  describe "to_proc" do
    it "returns a Proc that interprets `self` as a lookup table" do

      [1, 2, 3].to_proc.call(1).must_equal 2

    end
  end
end

describe Hash do
  describe "to_proc" do
    it "returns a Proc that interprets `self` as a fuzzy lookup table" do

      { /foo/ => true, /bar/ => false }.to_proc.call('foo').must_equal true
      { Integer => true, Float => false }.to_proc.call(4).must_equal true

      [1, 1.0].map(&{ Integer => true, Float => false }.to_proc).must_equal [true, false]

    end
  end
end

describe String do
  describe "to_proc" do
    it "returns a Proc based on `self` as a format string" do

      "%s_%s".to_proc.call(5, 'a').must_equal "5_a"

    end
  end
end

describe Regexp do
  describe "to_proc" do
    it "returns a Proc based on `self` as a grouping expression" do

      /_(\w+)_/.to_proc.call("_foo_").must_equal "foo"

    end
  end
end

describe Integer do
  describe "to_proc" do
    it "returns a Proc that takes an array and returns the element at this index" do

      1.to_proc.call([1, 2]).must_equal 2

    end
  end
end
