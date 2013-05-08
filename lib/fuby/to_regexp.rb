module Fuby
  refine ::Regexp do

    def to_regexp
      dup
    end

    alias_method :to_re, :to_regexp

  end
  refine ::Array do

    def to_regexp
      ::Regexp.new map { |term| term.to_regexp.source }.join '|'
    end

    alias_method :to_re, :to_regexp

  end
  refine ::String do

    def to_regexp
      ::Regexp.new "(_|\\b|[^A-z])#{ ::Regexp.escape self }(_|\\b|[^A-z])"
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
