require 'fuby/_'

module Fuby

  refine ::Enumerable do

    def invert
      ::Hash[ each_with_index.to_a ]
    end

  end

end
