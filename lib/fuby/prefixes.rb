module Fuby
  refine ::Array do

    def prefixes
      length.downto(1).map &(method :take)
    end

  end
end
