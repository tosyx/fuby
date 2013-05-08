require 'fuby/try_each'

using Fuby

describe Object do
  describe :try_each do
    describe [] do
      it "returns a proxy of self that tries applying method_missing to each element of the collection" do

        modules = [Array, Object, Enumerable]

        modules.try_each.module_exec do
          self.must_be_kind_of Module
        end

        modules.try_each.non_existant_method.must_equal modules

      end
    end
    describe [Proc] do
      it "tries calling the block_given with each element wrapped in a try proxy" do

        [Array, Object, Enumerable].try_each do |mod|
          mod.non_existant_method.must_be_nil
        end

      end
    end
  end
end
