require 'fuby/define_instance_method'

using Fuby

describe Module do
  describe "define_instance_method name, &block" do
    it "defines an instance method" do

      class A
      end

      a = A.new

      A.define_instance_method :foo do
        444
      end

      a.foo.must_equal 444

    end
  end
end
describe Object do
  describe "define_instance_method name, &block" do
    it "defines singleton method on `self`" do

      class A
      end

      a = A.new

      a.define_instance_method :foo do
        555
      end

      a.foo.must_equal 555

    end
  end
end
