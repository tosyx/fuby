module Fuby
  refine ::Hash do

    def | that
      dup.merge(that) { |key, src, dst| src }
    end

  end
end
