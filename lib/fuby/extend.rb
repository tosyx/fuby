using Fuby

module Fuby
  refine ::Object do

    def extend *extends, &body
      super *extends unless extends.empty?
      super ::Module.new(&body) if block_given?
      self
    end

  end
end
