require_relative 'method_added'

module Fuby
  refine ::Array do

    def shift_until &blk
      shift index(&blk)
    end

    method_added_as_filter :shift_until
  end
end
