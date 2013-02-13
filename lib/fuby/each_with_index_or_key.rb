require 'fuby/_'
require_relative 'methods_added_as_enumerator'

module Fuby
  refine ::Hash do

    def each_with_index_or_key
      each { |key, val| yield val, key }
    end

    methods_added_as_enumerator :each_with_index_or_key

  end
end
