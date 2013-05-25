require 'fuby/push_options'

using Fuby

describe Array do
  describe "push_options" do
    it "returns the last element if is_a? Hash" do

      opt = { a: 1 }
      xs = [1, 2, 3, opt]
      xs.push_options.must_be_same_as opt
      xs.must_equal [1, 2, 3, opt]

    end
    it "creates and returns a new hash which is pushed onto self" do

      xs = [1, 2, 3]
      xs.push_options.must_equal Hash.new
      xs.must_equal [1, 2, 3, Hash.new]

    end
    it "merges any given options as defaults" do

      xs = [1, 2, 3, { a:1, b:2, c:3 }]
      xs.push_options({ b:20 }, c:300).must_equal a:1, b:2, c:3

      xs = [1, 2, 3]
      xs.push_options({ b:20, c:30 }, c:300).must_equal b:20, c:30

    end
  end
end
