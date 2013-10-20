module Fuby
  refine ::Array do

    def suffixes
      (0 .. length - 1).map &(method :drop)
    end

  end
end
