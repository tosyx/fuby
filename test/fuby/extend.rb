require 'fuby/extend'

using Fuby

describe Module do
  describe "extend &block" do
    it "creates and extends a module based on the given &block" do

      o = Object.new
      o.extend! do

        def foo
        end

      end
      o.must_respond_to :foo

    end
  end
end
