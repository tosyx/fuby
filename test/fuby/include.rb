require 'fuby/include'
require 'fuby/send'

using Fuby

describe Module do
  describe "include &block" do
    it "creates and includes a module based on the given &block" do

      c = Class.new
      c.send :include do

        def foo
        end

      end
      c.new.must_respond_to :foo

    end
  end
end
