require_relative 'method_added_as_filter'

module Fuby
  refine ::Array do

    def shift_unless
      shift unless yield first
    end

    method_added_as_filter :shift_unless
  end
end
