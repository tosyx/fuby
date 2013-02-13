require 'fuby/_'
using Fuby

module Fuby
  refine ::Array do

    def drop_until &blk
      drop_while &blk.not
    end

    def drop_until! &blk
      drop_while! &blk.not
    end

    method_added_as_filter :drop_until, :drop_until!
  end
end
