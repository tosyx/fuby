using Fuby

module Fuby
  refine ::Numeric do

    def to_boolean
      self > 0
    end

    alias_method :to_b, :to_boolean

  end
  refine ::String do

    def to_boolean
      /^(t(rue)?|0*1|y(es)?)$/i === self
    end

    alias_method :to_b, :to_boolean

  end
  refine ::Symbol do

    def to_boolean
      @to_boolean = to_s.to_boolean if @to_boolean.nil?
      @to_boolean
    end

    alias_method :to_b, :to_boolean

  end
end
