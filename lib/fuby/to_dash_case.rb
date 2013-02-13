require 'fuby/_'
require_relative 'to_symbols'
require_relative 'to_lower_case'
require_relative 'to_upper_case'

using Fuby

module Fuby
  refine ::Symbol do

    def to_DASH_CASE
      @to_DASH_CASE  ||= to_symbols.join('-').to_sym.to_UPPER_CASE
    end

    def to_dash_case
      @to_dash_case  ||= to_symbols.join('-').to_sym.to_lower_case
    end

  end
end
