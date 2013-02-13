require 'fuby/_'

module Fuby
  refine ::Symbol do

    def % format
      (to_s % format).to_sym
    end

  end
end
