require 'fuby/prepend'

using Fuby

describe Module do
  describe "prepend &block" do
    it "creates and prepends a module based on the given &block" do

      klass = Class.new do

        include Module.new {
          def foo
            '1st'
          end
        }

        def foo
          '2nd' + super
        end

      end
      klass.send.prepend do

        def foo
          '3rd' + super
        end

      end
      klass.new.must_respond_to :foo
      klass.new.foo.must_equal '3rd2nd1st'

    end
  end
end
