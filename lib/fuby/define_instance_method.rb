require 'fuby/_'
using Fuby

module Fuby
  refine ::Module do

    def define_instance_method name, body = ::Proc.new
      define_method name, body
    end

  end
  refine ::Object do

    def define_instance_method name, body = ::Proc.new
      define_singleton_method name, body
    end

  end
end
