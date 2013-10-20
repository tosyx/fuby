require_relative 'part_of'

module Fuby
  refine ::Array do

    def prefix_of? *sig, &blk
      part_of? *sig, &blk
    end

    method_added_as_binary_operator :prefix_of?

  end
end

Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)
