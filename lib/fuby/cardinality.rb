require_relative 'enumerables'

module Fuby
  refine ::Object do

    def cardinality
      1
    end

  end
  refine ::NilClass do

    def cardinality
      0
    end

  end
  Enumerables.each do |enumerable|
    refine enumerable do

      def cardinality
        count
      end

    end
  end
end
