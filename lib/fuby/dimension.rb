module Fuby
  refine ::Object do

    def dimension
      1
    end

  end
  refine ::NilClass do

    def dimension
      0
    end

  end
  module ::Enumerable # can't refine Module

    def dimension
      count
    end

  end
end
