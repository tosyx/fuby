require_relative 'names'

module Fuby
  refine ::Module do

    def eastern_name
      names.join ' '
    end

  end
end
