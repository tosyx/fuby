module Fuby
  refine ::Hash do

    [ :'', :'!' ].each { |i| eval %{

      def merge#{ i } that = self, key = nil, &blk
        case key
        when nil
        when Symbol then return send merge_\#{ key }#{ i } that, &blk if respond_to? merge_\#{ key }#{ i }
        else raise ArgumentError
        end
        return super
      end

    }}

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
