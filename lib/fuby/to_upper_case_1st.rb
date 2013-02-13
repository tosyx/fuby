require 'fuby/_'

module Fuby
  refine ::Symbol do

    def to_UPPER_CASE_1st
      @to_UPPER_CASE_1st ||= to_s.sub(/[a-z]/i, &:upcase).to_sym
    end

  end
end
