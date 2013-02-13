require_relative 'uuid'

module Fuby
  refine ::Module do

    def included mod
      super
      return if mod.respond_to? infuze_object_id = :"infuze_#{ object_id }"
      alias_method infuze_object_id, :infuze unless method_defined? infuze_object_id
      mod.send :module_function, infuze_object_id
      mod.send infuze_object_id, self
    end

    def included here
      super
      if method_defined? :included
        alias_method :funk, 
      end
    end

  end
end
