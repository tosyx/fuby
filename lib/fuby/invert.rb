require_relative 'self_and_descendants'
require_relative 'each_with_index_or_key'

using Fuby

module Fuby

  Enumerable.self_and_descendants.each do |klass|
    unless klass.instance_method_defined? :invert
      refine klass do

        def invert
          ::Hash[ each_with_index_or_key.to_a ]
        end

      end
    end
  end

end
