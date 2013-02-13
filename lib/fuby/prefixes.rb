require 'fuby/_'
require_relative 'part_of'

module Fuby
  refine ::Array do

    def prefixes
      (length .. 1).map &(method :take)
    end

  end
end
