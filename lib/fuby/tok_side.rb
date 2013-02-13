require 'fuby/_'
require_relative 'define_tok'

module Fuby
  refine ::String do

    define_tok :tok_side, top:    /^t/i,
                          left:   /^l/i,
                          right:  /^r/i,
                          bottom: /^b/i
  end
end
