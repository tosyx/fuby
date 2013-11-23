require_relative 'send'

module Fuby
  refine ::Module do

    def include *includes, &body
      self.send :include, *includes unless includes.empty?
      self.send :include, ::Module.new(&body) if block_given?
      self
    end

  end
  class Send

    def include *includes, &body
      @self.send :include, *includes unless includes.empty?
      @self.send :include, ::Module.new(&body) if block_given?
      @self
    end

  end
end
