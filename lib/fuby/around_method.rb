require 'fuby/_'

module Fuby
  refine ::Module do

    def around_method method_name, name_or_body = Proc.new

      case name_or_body

      when Proc
        name = :"around_#{ method_name }_#{ name_or_body.object_id }"
        body = name_or_body
        define_method name, &body

      when Symbol, String
        name = name_or_body
        body = method name
      
      end

      had_visibility = method(method_name).visibility

      prepend do

        define_method method_name do |*sig, &blk|
          send name, *(sig.take body.arity) do
            super *sig, &blk
          end
        end

        method(method_name).visibility had_visibility

      end
    end

  end
end
