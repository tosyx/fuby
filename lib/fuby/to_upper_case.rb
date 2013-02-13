require 'fuby/_'

module Fuby
  refine ::Symbol do

    def to_UPPER_CASE
      @to_UPPER_CASE ||= upcase
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
