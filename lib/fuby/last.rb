module Fuby
  refine ::Array do

    def last= it
      self[length - 1] = it
    end

  end
end
