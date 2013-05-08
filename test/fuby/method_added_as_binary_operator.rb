require 'fuby/method_added_as_binary_operator'

using Fuby

describe Module do
  describe "method_added_as_binary_operator *names" do
    it "redefines the referenced methods as binary operators, allowing currying of the second argument" do

      class Array
        method_added_as_binary_operator :push
      end

      xs = [1, 2, 3]
      xs.push.must_be_instance_of Method
      xs.push.call 4
      xs.must_equal [1, 2, 3, 4]

    end
  end
end
