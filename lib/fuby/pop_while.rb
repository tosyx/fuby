module Fuby
  refine ::Array do

    def pop_while &blk
      pop_until &(blk.not)
    end

    method_added_as_filter :pop_while

  end
end
