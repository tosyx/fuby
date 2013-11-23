module Fuby
  refine ::Array do

    def first= it
      self[0] = it
    end

  end
end
