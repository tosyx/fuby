require_relative 'method_added_as_filter'

using Fuby

module Fuby
  refine ::Array do

    def select
      super
    end

    def select!
      super
    end

    method_added_as_filter :select, :select!

  end
end
