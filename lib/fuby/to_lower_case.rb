require 'fuby/_'

module Fuby
  refine ::Symbol do

    def to_lower_case
      @to_lower_case ||= downcase
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
