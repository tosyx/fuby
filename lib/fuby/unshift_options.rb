require 'fuby/_'
require_relative 'shift_options'

module Fuby
  refine ::Array do

    def unshift_options *defaults
      shift_options(*defaults).tap { |opt| push opt }
    end

  end
end
