require_relative 'method_added_as_filter'

module Fuby
  refine ::Array do

    def pop_if &blk
      pop if yield first
    end

    method_added_as_filter :pop_if

  end
end
