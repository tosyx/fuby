require 'fuby/method_added_as_filter'

using Fuby

describe Module do
  describe "method_added_as_filter *names" do
    it "redefines the referenced methods as filter methods" do

      m = Module.new do

        def foo &pred
          [1, 2, 3].select &pred
        end

        method_added_as_filter :foo

      end

      c = Class.new
      c.send :include, m
      c.new.must_respond_to :foo

      c.new.foo { |i| i < 3 }.must_equal [1, 2]

    end
  end
end
