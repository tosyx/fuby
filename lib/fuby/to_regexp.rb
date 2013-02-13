require 'fuby/_'

module Fuby
  refine ::Regexp do

    def to_regexp
      self
    end

    alias_method :to_re, :to_regexp

  end
  refine ::Array do

    def to_regexp
      ::Regexp.new map(&:to_re).join '|'
    end

    alias_method :to_re, :to_regexp

  end
  refine ::String do

    def to_regexp
      ::Regexp.new ::Regex.escape(arg)
    end

    alias_method :to_re, :to_regexp

  end
  refine ::Symbol do

    def to_regexp
      to_s.to_re
    end

    alias_method :to_re, :to_regexp

  end
end
