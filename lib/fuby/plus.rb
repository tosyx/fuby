require 'fuby/_'

module Fuby
  refine ::Regexp do

    def + that
      that = that.source if Regexp === that
      self.class.new source + that.source, options
    end

  end
end
