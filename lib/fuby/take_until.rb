require 'fuby/_'
using Fuby

module Fuby
  refine ::Array do

    def take_until &blk
      take_while &(blk.not)
    end

    def take_until! &blk
      take_while! &blk.not
    end

    method_added_as_filter :take_until, :take_until!

  end
end
