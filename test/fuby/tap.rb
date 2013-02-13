require 'fuby/tap'

using Fuby

describe Object do
  %w{ tap tap? tap! }.each { |w| eval %{
    describe :#{ w } do
      it "returns self unless block_given?" do

        obj = Object.new
        obj.must_be_same_as obj.#{ w }

      end
      it "calls the given block with self, and returns self" do

        obj = Object.new
        obj.#{ w } { |arg| arg.must_be_same_as obj }.must_be_same_as obj

      end
    end
  }}
end
describe NilClass do
  describe :tap do
    it "calls the block_given with self, and returns self" do
     
      called = false
      nil.tap { called = true }
      called.must_equal true
      nil.tap { |arg| arg.must_be_nil }.must_be_nil
      nil.tap.must_be_nil

    end
  end
  %w{ tap? tap_each }.each { |w| eval %{

    describe :#{ w } do
      it "returns self without calling the block_given" do

        called = false
        nil.#{ w } { called = true }
        called.must_equal false
        nil.#{ w } { 99 }.must_be_nil
        nil.#{ w }.must_be_nil

      end
    end

  }}
  describe :tap! do
    it "raises TypeError" do

      nil.tap! { 99 }.must_raise TypeError rescue nil
      nil.tap!.must_raise TypeError rescue nil

    end
  end
end
