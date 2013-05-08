require_relative 'method_added_as_filter'

module Fuby
  refine ::Array do

    def shift_if
      shift if yield first
    end

    method_added_as_filter :shift_if
  end
end
