require_relative 'names'

module Fuby
  refine ::Module do

    def western_name
      names.reverse.join ' '
    end

  end
end
