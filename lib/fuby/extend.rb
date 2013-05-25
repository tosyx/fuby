using Fuby

module Fuby
  refine ::Object do

    def extend! *extends, &body
      extend *extends unless extends.empty?
      extend ::Module.new(&body) if block_given?
      self
    end

  end
end
