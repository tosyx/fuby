require 'fuby/ancestors'

using Fuby

describe Class do
  describe "ancestors" do
    it "returns the same result as `super`" do

      module_A = Module.new
      class_A = Class.new do include module_A end

      module_B = Module.new
      class_B = Class.new class_A do include module_B end

      module_C = Module.new
      class_C = Class.new class_B do include module_C end

      class_C.ancestors.take(6).must_equal [class_C, module_C, class_B, module_B, class_A, module_A]

    end
  end
  describe "ancestors Type" do
    it "returns all ancestors of type Type" do

      module_A = Module.new
      class_A = Class.new do include module_A end

      module_B = Module.new
      class_B = Class.new class_A do include module_B end

      module_C = Module.new
      class_C = Class.new class_B do include module_C end

      class_C.ancestors(Class).take(3).must_equal [class_C, class_B, class_A]

    end
  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)
