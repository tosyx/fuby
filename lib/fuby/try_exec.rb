require_relative 'try_eval'
using Fuby

module Fuby
  refine ::Object do

    def try_exec &blk
      try_eval &blk
    end

    def try_exec? &blk
      try_eval? &blk
    end

  end
end
