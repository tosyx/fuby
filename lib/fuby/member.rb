require_relative 'method_added_as_binary_operator'

module Fuby
  module ::Enumerable # can't refine Module

    method_added_as_binary_operator :member?, :include?

  end
end
