require 'fuby/_'
require 'fuby/prepend'
require 'fuby/to_pred'

module Fuby
  refine ::Module do

    def method_added_as_filter *names
      names.each do |name|
        prepend do
          define_method name do |match = nil, &pred|
            return method name if match.nil? && pred.nil?
            return super &(pred or match.to_pred) 
          end
        end
      end
    end

  end
end
