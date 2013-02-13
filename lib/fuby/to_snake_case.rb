require 'fuby/_'
require_relative 'to_symbols'
require_relative 'to_lower_case'
require_relative 'to_upper_case'

using Fuby

module Fuby
  refine ::Symbol do

    def to_snake_case
      @to_snake_case ||= to_symbols.join('_').to_sym.to_lower_case
    end

    def to_SNAKE_CASE
      @to_SNAKE_CASE ||= to_symbols.join('_').to_sym.to_UPPER_CASE
    end

  end
end
