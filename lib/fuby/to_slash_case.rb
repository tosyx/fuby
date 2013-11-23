require_relative 'to_components'

module Fuby
  refine ::String do

    def to_SLASH_CASE
      to_components.join('/').upcase
    end

    def to_slash_case
      to_components.join('/').downcase
    end

  end
  refine ::Symbol do

    def to_SLASH_CASE
      @to_SLASH_CASE ||= to_s.to_SLASH_CASE.to_sym
    end

    def to_slash_case
      @to_slash_case ||= to_s.to_slash_case.to_sym
    end

  end
end
