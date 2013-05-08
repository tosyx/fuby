module Fuby
  refine ::Proc do

    def tok_arity
      arity.tok_arity
    end

  end
  refine ::Integer do

    TOK_ARITY = [ :nullary, :unary, :binary, :ternary, :quaternary ].freeze

    def tok_arity
      TOK_ARITY[ self ]
    end

  end
end
