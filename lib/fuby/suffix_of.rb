module Fuby
  refine ::Array do

    def suffix_of? that
      eql? that.drop -length
    end

    method_added_as_binary_operator :suffix_of?

  end
end

Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)
