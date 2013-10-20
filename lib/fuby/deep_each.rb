require_relative 'each_with_index_or_key'

using Fuby

module Fuby
  module ::Enumerable # can't refine Module

    def deep_each *path, &blk
      if block_given?

        each_with_index_or_key do |e, i|
          next e.deep_each i, *path, &blk if self.class === e
          next yield e, i, *path
        end

      else

        ::Enumerator.new do |result|
          deep_each { |e, *path| result.<< e, *path }
        end

      end
    end

  end
end
