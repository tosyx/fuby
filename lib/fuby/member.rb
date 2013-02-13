require 'fuby/_'

module Fuby
  refine ::Enumerable do

    method_added_as_binary_operator :member?, :include?

  end
end
