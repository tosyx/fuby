require_relative 'splat'

module Fuby
  module ::Enumerable # can't refine Module

    def equivalence? eq = :eql?
      each_cons(2).splat.all? { |fst, snd| fst.send eq, snd }
    end

  end
end
