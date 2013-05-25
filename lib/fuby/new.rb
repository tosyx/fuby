module Fuby
  refine ::Float.singleton_class do

    def new
      0.0
    end

  end
  refine ::Integer.singleton_class do

    def new
      0
    end

  end
end
