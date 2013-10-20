require_relative 'self_and_descendants'
require_relative 'each_with_index_or_key'

module Fuby

  module ::Enumerable # can't refine Module

    def invert
      ::Hash[ each_with_index_or_key.to_a ]
    end

  end

end
