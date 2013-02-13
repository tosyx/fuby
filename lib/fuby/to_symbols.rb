require 'fuby/_'
using Fuby

module Fuby
  refine ::Symbol do

    def to_symbols
      @to_symbols ||= begin
        sym  = self
        sym  = downcase if /[A-Z]/ === self && /[a-z]/ === self
        syms = sym.to_s.scan /[0-9]*[A-Z]{2,}(?=\b|[^A-Za-z]|[A-Z][a-z])|[0-9]*[A-Z]?[a-z]+|[0-9]+/
        syms.map! &:to_sym
        syms.freeze  
      end
      @to_symbols.dup
    end

  end
end
