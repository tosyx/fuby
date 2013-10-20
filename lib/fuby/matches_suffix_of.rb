module Fuby
  refine ::Array do

    def matches_suffix_of? that
      matches? that.drop - length
    end

    method_added_as_binary_operator :matches_suffix_of?

  end
end
