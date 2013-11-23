module Fuby
  refine ::Module do

    def singleton_method_defined? name
      singleton_class.send :method_defined?, name
    end

  end
end
