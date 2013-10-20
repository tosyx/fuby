require_relative 'method_added_as_binary_operator'
require_relative 'matches_part_of'

using Fuby

module Fuby
  refine ::Array do

    def matches_prefix_of? *sig, &blk
      matches_part_of? *sig, &blk
    end

    method_added_as_binary_operator :matches_prefix_of?

  end
end
