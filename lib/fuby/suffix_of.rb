using Fuby

module Fuby
  refine ::Array do

    def suffix_of? that
      eql? that.drop -length
    end

    def matches_suffix_of? that
      matches? that.drop - length
    end

    methods_added_as_binary_operator :suffix_of?, :matches_suffix_of?

  end
end

Dir.glob "*_suffix_of.rb", &method(:require)
