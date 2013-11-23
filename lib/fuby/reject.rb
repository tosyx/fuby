require_relative 'method_added_as_filter'

using Fuby

module Fuby
  refine ::Array do

    def reject
      super
    end

    def reject!
      super
    end

    method_added_as_filter :reject, :reject!

  end
end
