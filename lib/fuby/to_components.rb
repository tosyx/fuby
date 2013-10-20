module Fuby
  refine ::String do

    def to_components
      return downcase.to_components if /[A-Z]/ === self unless /[a-z]/ === self # it's all CAPS
      scan /[A-Z]+[0-9]*(?=_|\b|[^A-z]|[A-Z][a-z])|[A-Z]?[a-z]+[0-9]*(?=_|\b|[^a-z]|[A-Z])|[0-9]+[a-z]*/
      # 
      # presuming either some form of camelCase or lower_case, either:
      # 
      # a run of capitals optionally followed by an integer, excluding the capital leading a following CamelCase word
      # e.g. HTML5, IE9
      # 
      # a run of lower-case letters optionally followed by an integer
      # e.g. html5, ie9
      # 
      # a number or number word
      # e.g. 1st, 2nd
      # 
      # a proper camelCase component
    end

  end
  refine ::Symbol do

    def to_components
      @to_components ||= to_s.to_components.map(&:to_sym).freeze
      @to_components.dup
    end

  end
end
