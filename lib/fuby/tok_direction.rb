require 'fuby/_'
require_relative 'define_tok'

module Fuby
  refine ::String do

    define_tok :tok_direction, up:         /^u/i,
                               down:       /^d/i,
                               left:       /^l/i,
                               right:      /^r/i,
                               ascending:  /^ascending/i,
                               asc:        /^asc/i,
                               descending: /^descending/i,
                               desc:       /^desc/i

  end
end
