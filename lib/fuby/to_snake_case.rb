require_relative 'to_components'

using Fuby

module Fuby
  refine ::String do

    def to_snake_case
      to_components.join('_').downcase
    end

    def to_SNAKE_CASE
      to_components.join('_').upcase
    end

  end
  refine ::Symbol do

    def to_snake_case
      @to_snake_case ||= to_s.to_snake_case.to_sym
    end

    def to_SNAKE_CASE
      @to_SNAKE_CASE ||= to_s.to_SNAKE_CASE.to_sym
    end

  end
end
