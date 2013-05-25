require 'fuby/pop_options'

using Fuby

describe Array do
  describe "pop_options" do
    it "pops the last element if is_a? Hash" do

      xs = [1, 2, 3, { a:1 }]
      xs.pop_options.must_equal a:1
      xs.must_equal [1, 2, 3]

    end
    it "creates and returns a new hash unless the last element is_a? Hash" do

      xs = [1, 2, 3]
      xs.pop_options.must_equal Hash.new
      xs.must_equal [1, 2, 3]

    end
    it "merges any given options as defaults" do

      xs = [1, 2, 3, { a:1, b:2, c:3 }]
      xs.pop_options({ b:20 }, c:300).must_equal a:1, b:2, c:3

      xs = [1, 2, 3, { a:1 }]
      xs.pop_options({ b:20, c:30 }, c:300).must_equal a:1, b:20, c:30

    end
  end
end
