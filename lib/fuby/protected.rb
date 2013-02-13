require 'fuby/_'
using Fuby

module Fuby
  refine ::Method do

    def protected? inherited = true
      owner.protected_instance_methods(inherited).include? name
    end

  end
end
