require 'fuby/_'

module Fuby
  refine ::Symbol do

    def to_lower_case_1st
      @to_lower_case_1st ||= to_s.sub(/[a-z]/i, &:downcase).to_sym
    end

  end
end
