require 'fuby/_'
require_relative 'splat'
using Fuby

module Fuby
  refine ::Enumerable do

    def equivalence? eq = :eql?
      each_cons(2).splat.all? { |fst, snd| fst.send eq, snd }
    end

  end
end
