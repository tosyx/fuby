require_relative 'descendants'

module Fuby
  refine ::Module do

    def self_and_descendants type = ::Module
      them = descendants type
      them << self if type === self
      them
    end

  end
end
