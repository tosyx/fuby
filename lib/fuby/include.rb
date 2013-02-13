require 'fuby/_'

using Fuby

module Fuby
  refine ::Module do

    def include *includes, &body
      super *includes unless includes.empty?
      super ::Module.new(&body) if block_given?
      self
    end

    public :include

  end
end
