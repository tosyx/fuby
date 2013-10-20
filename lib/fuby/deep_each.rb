require_relative 'each_with_index_or_key'
require_relative 'enumerables'

module Fuby
  Enumerables.each do |enumerable|
    refine enumerable do

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
end
