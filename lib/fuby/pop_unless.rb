require 'fuby/_'

module Fuby
  refine ::Array do

    def pop_unless &blk
      pop unless yield first
    end

    method_added_as_filter :pop_unless
  
  end
end
