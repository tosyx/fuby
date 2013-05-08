require 'fuby/define_missing_method'

using Fuby

describe Module do
  describe "define_missing_method pattern, &block" do
    it "defines a missing_method handler for keys matching the given pattern" do

      class A

        define_missing_method /any/ do
          5
        end

      end

      A.new.many.must_equal 5
      A.new.respond_to?(:zany).must_equal true

    end
    it "prepends any matched anonymous groups" do

      class A
      end

    end
  end
end
