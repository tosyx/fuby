require_relative 'deep_const_get'

module Fuby
  refine ::Module do

    def outer_module
      @outer_module ||= /::[^:]+\Z/ === self ? Kernel.deep_const_get($`) : Kernel
    end

  end
  refine ::Kernel.singleton_class do

    def outer_module
      nil
    end

  end
end
