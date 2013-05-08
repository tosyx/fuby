
describe Module do
  describe 'prepend *modules' do
    it "returns self" do

      m = Module.new
      n = Module.new
      (m.send :prepend, n).must_be_same_as m

    end
    it "adds the methods of each given module" do

      m = Module.new { def foo; end }
      n = Module.new { def bar; end }
      o = Class.new.send :prepend, m, n
      o.new.respond_to?(:foo).must_equal true
      o.new.respond_to?(:bar).must_equal true

    end
    it "prepends the modules in reverse order, preserving the `super` relationship" do

      m = Module.new { def foo; super * 10 end }
      n = Module.new { def foo; super + 10 end }
      o = Class.new  { def foo;   0 end }.send :prepend, m, n
      o.new.send(:foo).must_equal 100

    end
  end

  describe 'refine &block' do
    it "returns the module created from the given block" do

      module Namespace
        m = Class.new
        n = refine(m) { def foo; end }
      end

    end
  end
# describe 'refine class, &block' do
#   it "should only work for classes" do

#     proc { refine(Module.new) {} }.must_raise TypeError

#   end
# end
end

tmp_class = Class.new

tmp_namespace = Module.new do
  refine(tmp_class) { def foo; end }
end

using tmp_namespace

describe Kernel do
  describe "using namespace" do
    it "prepends all refinements defined in `namespace`" do

      tmp_class.instance_methods.include?(:foo).must_equal true

    end
  end
end
