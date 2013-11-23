require 'fuby/alias_method'

using Fuby

describe Module do
  describe "alias_method existing_method_name" do
    it "creates and returns a new symbol that aliases the existing_method_name" do

      class A

        def foo
          5
        end

        eval %{

          def foo
            #{ alias_method :foo } * 10
          end

        }

      end

      A.new.foo.must_equal 50

    end
  end
end
