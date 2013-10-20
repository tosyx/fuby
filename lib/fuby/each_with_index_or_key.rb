module Fuby
  refine ::Hash do

    def each_with_index_or_key
      return each { |key, val| yield val, key } if block_given?
      return ::Enumerator.new { |result| each { |key, val| result.<< val, key } }
    end

  end
  refine ::Array do

    def each_with_index_or_key *sig, &blk
      each_with_index *sig, &blk
    end

  end
end
