require 'fuby/_'
require_relative 'method_added_as_filter'

module Fuby
  refine ::Enumerable do

    method_added_as_filter :all?

  end
end
