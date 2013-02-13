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
  refine ::Enumerable do

    def dimension
      count
    end

  end
end
