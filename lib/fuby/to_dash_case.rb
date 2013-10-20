require_relative 'to_components'

module Fuby
  refine ::String do

    def to_DASH_CASE
      to_components.join('-').upcase
    end

    def to_dash_case
      to_components.join('-').downcase
    end

  end
  refine ::Symbol do

    def to_DASH_CASE
      @to_DASH_CASE ||= to_s.to_DASH_CASE.to_sym
    end

    def to_dash_case
      @to_dash_case ||= to_s.to_dash_case.to_sym
    end

  end
end
