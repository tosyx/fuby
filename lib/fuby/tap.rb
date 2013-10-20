module Fuby
  refine ::Object do

    def tap &blk
      return super if block_given?
      return self
    end

    alias_method :tap?, :tap
    alias_method :tap!, :tap

  end
  refine ::NilClass do

    def tap?
      self
    end

    def tap!
      raise ::TypeError
    end

    alias_method :tap_each, :tap?

  end
end
