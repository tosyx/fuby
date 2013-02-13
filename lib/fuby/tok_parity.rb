require 'fuby/_'

module Fuby
  refine ::Integer do

    TOK_PARITY = [ :even, :odd ].freeze

    def tok_parity
      TOK_PARITY[ self % 2 ]
    end

  end
end
