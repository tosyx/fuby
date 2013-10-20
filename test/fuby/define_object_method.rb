require 'fuby/define_object_method'

using Fuby

describe Module do
  describe "define_object_method name, &block" do
    it "defines a singleton method" do

      class A
      end

      a = A.new

      A.define_object_method :foo do
        444
      end

      A.foo.must_equal 444

    end
  end
end
describe Object do
  describe "define_object_method name, &block" do
    it "defines an instance method on `self.class`" do

      class A
      end

      a = A.new

      a.define_object_method :foo do
        555
      end

      a.foo.must_equal 555

    end
  end
end
