require 'fuby/_'
using Fuby

module Fuby
  refine ::Array do

    def drop_while! &blk
      shift_while &blk
      self
    end

    method_added_as_filter :drop_while, :drop_while!
  end
end
