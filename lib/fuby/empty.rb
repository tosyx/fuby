require 'fuby/_'

module Fuby
  refine ::Enumerable do

    def empty?
      count.zero?
    end

  end
end
