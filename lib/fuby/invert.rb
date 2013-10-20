require_relative 'descendants'
require_relative 'each_with_index_or_key'

using Fuby

module Fuby
  ::Enumerable.descendants(Class).each do |enumerable|
    refine enumerable do

      def invert
        ::Hash[ each_with_index_or_key.to_a ]
      end

    end
  end
end
