module Fuby
  refine ::Array do

    def pop_until &blk
      pop count - (rindex &blk)
    end

    method_added_as_filter :pop_until

  end
end
