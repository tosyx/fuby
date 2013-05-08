using Fuby

module Fuby
  refine ::Method do

    def public? inherited = true
      owner.public_instance_methods(inherited).include? name
    end

  end
end
