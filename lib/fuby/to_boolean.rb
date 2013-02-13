require 'fuby/_'
using Fuby

module Fuby
  refine ::Integer do

    def to_boolean
      self != 0
    end

    alias_method :to_b, :to_boolean

  end
  refine ::String do

    def to_boolean
      /^(t(rue)|1)$/i === self
    end

    alias_method :to_b, :to_boolean

  end
end
