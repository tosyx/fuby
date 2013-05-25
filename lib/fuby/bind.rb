require_relative 'uuid'

using Fuby

module Fuby
  refine ::Proc do

    def bind receiver # pinched from facets#lib/core/facets/proc/bind.rb
      block = self
      anonymous_name = Symbol.__uuid__
      
      receiver.singleton_class.class_eval do
        define_method anonymous_name, &block
        anonymous_method = instance_method anonymous_name
        remove_method anonymous_name
        anonymous_method
      end.bind receiver
    end

  end
end
