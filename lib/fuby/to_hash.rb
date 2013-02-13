require 'fuby/_'
using Fuby

module Fuby
  refine ::Enumerable do

    def to_hash
      invert.invert
    end

    alias_method :to_h, :to_hash

  end
  refine ::Hash do

    def to_hash
      self
    end

    alias_method :to_h, :to_hash

  end
end
