module Fuby
  module ::Enumerable # can't refine Module

    def splat
      ::Enumerator.new { |result| each { |sig| result.<< *sig } }
    end

  end
end
