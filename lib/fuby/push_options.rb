module Fuby
  refine ::Array do

    def push_options *defaults
      pop_options(*defaults).tap { |opt| push opt }
    end

  end
end
