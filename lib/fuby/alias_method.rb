require_relative 'uuid'

module Fuby
  refine ::Module do

    def alias_method! old_name
      Symbol.__uuid__.tap { |new_name| alias_method new_name, old_name }
    end

  end
end
