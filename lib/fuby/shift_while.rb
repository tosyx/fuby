require_relative 'not'
require_relative 'shift_until'
require_relative 'method_added_as_filter'

using Fuby

module Fuby
  refine ::Array do

    def shift_while &blk
      shift_until &(blk.not)
    end

    method_added_as_filter :shift_while
  end
end
