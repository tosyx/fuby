require 'fuby/descendants'
require 'fuby/send'

using Fuby

describe Class do
  describe "descendants" do
    it "returns all descendants of `self`" do

      class_A = Class.new
      class_B = Class.new class_A
      class_C = Class.new class_B
      class_D = Class.new class_C

      class_A.descendants.must_include class_B
      class_A.descendants.must_include class_C
      class_A.descendants.must_include class_D

    end
  end
end
describe Module do
  describe "descendants" do
    it "returns all descendants of `self`" do

      module_A = Module.new
      module_B = Module.new.send.include module_A
      module_C = Module.new.send.include module_B
      module_D = Module.new.send.include module_C

      module_A.descendants.must_include module_B
      module_A.descendants.must_include module_C
      module_A.descendants.must_include module_D

    end
  end
  describe "descendants Type" do
    it "returns all descendants of `self` with type Type" do

      # module AA; end
      # class A; include AA; end

      # module BB; end
      # class B < A; include BB; end

      # module CC; end
      # class C < B: include CC; end

      # C.descendants(Class).take(3).must_equal [C, B, A]

    end
  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)
