require 'fuby/_'
require_relative 'to_symbols'
require_relative 'to_upper_case_1st'

using Fuby

module Fuby
  refine ::Symbol do

    def to_camelCase
      @to_camelCase ||= begin
        symbols = to_symbols
        first   = symbols.unshift.to_lower_case
        symbols.map! &:to_UPPER_CASE_1st
        symbols.unshift first
        symbols.join.to_sym
      end
    end

    def to_CamelCase
      @to_CamelCase ||= to_symbols.map!(&:to_UPPER_CASE_1st).join.to_sym
    end

  end
end
