module Fuby
  refine ::Module do

    def define_tok name, toker
      define_method name, &toker.to_tok 
    end

  end
end
