require 'fuby/prepend'
require 'fuby/send'

using Fuby

describe Module do
  describe "prepend &block" do
    it "creates and prepends a module based on the given &block" do

      c = Class.new
      c.send :prepend do

        def foo
        end

      end
      c.new.must_respond_to :foo

    end
  end
end
