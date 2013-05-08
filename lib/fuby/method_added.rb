using Fuby

module Fuby
  refine ::Module do

    # def method_added name
    #   super
    #   send :"method_added_named_#{ name }", name if respond_to? :"method_added_named_#{ name }"
    #   return unless const_defined? const_name = name.to_CamelCase
    #   return unless ::Module === const_get(const_name)
    #   method_name = name.to_snake_case

    #   after_method :infuzing do
    #     define_method const_name do |*sig, &blk|
    #     end unless method_defined? const_name

    #     define_method method_name do |*sig, &blk|
    #       extend send const_name, *sig, &blk
    #       self
    #     end unless method_defined? method_name

    #     define_singleton_method const_name do |*sig, &blk|
    #       mod = base.class.new base
    #       mod.send :module_function, name
    #       mod.send name, *sig, &blk
    #       mod
    #     end unless singleton_method_defined? const_name

    #     define_singleton_method method_name do |*sig, &blk|
    #       include send const_name, *sig, &blk
    #       self
    #     end unless singleton_method_defined? method_name
    #   end
    # end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
