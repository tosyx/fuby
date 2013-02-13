require 'fuby/_'
using Fuby

module Fuby
  refine ::Enumerable do

    def splat
      ::Enumerator.new { |result| each { |sig| result.<< *sig } }
    end

  end
end
