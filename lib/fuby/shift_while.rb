require 'fuby/_'
require_relative 'method_added'

module Fuby
  refine ::Array do

    def shift_while &blk
      shift_until &(blk.not)
    end

    method_added_as_filter :shift_while
  end
end
