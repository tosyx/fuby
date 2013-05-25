require 'fuby/bind'

using Fuby

describe Proc do
  describe "bind receiver" do
    it "binds self to the given receiver" do

      foo = -> { self }
      bar = {}
      qux = foo.bind bar
      qux.must_be_instance_of Method
      qux.call.must_equal bar

    end
  end
end
