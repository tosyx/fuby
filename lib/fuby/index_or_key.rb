require 'fuby/_'
require_relative ''

module Fuby

  refine ::Array do

    def index_or_key
      index
    end

  end

  refine ::Hash do

    def index_or_key
      key
    end

  end

end
