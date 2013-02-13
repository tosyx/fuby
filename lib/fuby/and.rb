require 'fuby/_'

module Fuby
  refine ::Hash do

    def & that
      dup.reject { |key| ! that.has_key? key }
    end

  end
end
