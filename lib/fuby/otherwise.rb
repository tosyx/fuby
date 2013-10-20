module Fuby
  refine ::Object do

    def otherwise that = nil
      self
    end

  end
  refine ::NilClass do

    def otherwise that = nil
      block_given? ? yield : that
    end

  end
end
