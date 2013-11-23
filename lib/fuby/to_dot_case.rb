require_relative 'to_components'

module Fuby
  refine ::String do

    def to_DOT_CASE
      to_components.join('.').upcase
    end

    def to_dot_case
      to_components.join('.').downcase
    end

  end
  refine ::Symbol do

    def to_DOT_CASE
      @to_DOT_CASE ||= to_s.to_DOT_CASE.to_sym
    end

    def to_dot_case
      @to_dot_case ||= to_s.to_dot_case.to_sym
    end

  end
end
