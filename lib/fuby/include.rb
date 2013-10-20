module Fuby
  refine ::Module do

    def include! *includes, &body
      include *includes unless includes.empty?
      include ::Module.new(&body) if block_given?
      self
    end

  end
end
