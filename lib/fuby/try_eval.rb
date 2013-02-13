require 'fuby/_'
require 'fuby/try'

module Fuby
  refine ::Object do

    def try_eval &blk
      result = (Try::Many.new self).instance_eval &blk
      return result.__unwrap__ if Try::Base === result
      return result
    end

    def try_eval? &blk
      result = (Try::Many.new self, self).instance_eval &blk
      return result.__unwrap__ if Try::Base === result
      return result
    end

  end
end
