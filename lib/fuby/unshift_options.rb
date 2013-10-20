require_relative 'shift_options'

using Fuby

module Fuby
  refine ::Array do

    def unshift_options *defaults
      shift_options(*defaults).tap { |opt| push opt }
    end

  end
end
