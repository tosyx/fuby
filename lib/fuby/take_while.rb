using Fuby

module Fuby
  refine ::Array do

    def take_while! &blk
      pop length - index(&blk)
      self
    end

    method_added_as_filter :take_while, :take_while!

  end
end
