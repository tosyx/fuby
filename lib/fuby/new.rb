require 'fuby/_'
using Fuby

module Fuby
  refine ::Module do

    def initialize *sig, &blk
      include *sig
      super &blk
    end

  end
  refine ::Float.singleton_class do

    def new
      0.0
    end

  end
  refine ::Integer.singleton_class do

    def new
      0
    end

  end
end
