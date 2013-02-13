require 'fuby/_'
using Fuby

module Fuby
  refine ::Method do

    def private? inherited = true
      owner.private_instance_methods(inherited).include? name
    end

  end
end
