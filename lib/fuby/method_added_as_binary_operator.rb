require 'fuby/_'

module Fuby
  refine ::Module do

    def method_added_as_binary_operator *names
      names.each do |name|
        prepend do
          define_method name do |*sig|
            return method name if sig.empty?
            return super *sig
          end
        end
      end
    end

  end
end
