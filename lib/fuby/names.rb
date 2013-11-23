module Fuby
  refine ::Module do

    def names
      name.split '::'
    end

  end
end
