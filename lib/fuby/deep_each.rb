module Fuby
  module ::Enumerable # can't refine Module

    def deep_each *path, &blk
      each_with_index_or_key do |e, i|
        return e.deep_each i, *path, &blk if self.class === e
        return yield e, *path
      end
    end

  end
end
