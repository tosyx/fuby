require 'fuby/_'

module Fuby
  refine ::Hash do

    def merge_css that
      dup.merge_css! that
    end

    def merge_css! that
      merge! that do |key, lft, rgt|
        case key
        when /^class$/ then "#{ lft } #{ rgt }"
        when /^style$/ then "#{ lft };#{ rgt }"
        else rgt
        end
      end
    end

  end

  module MergeCSS

    def merge_css *hashes
      hashes.inject ({}) do |memo, hash|
        memo.merge_css! hash
      end.tap do |hash|
        hash.each { |key, val| hash.merge_css! val if send k      if respond_to? k      if /\?$/ === key }
        hash.each { |key, val| hash.merge!     val if send k.to_? if respond_to? k.to_? if /\!$/ === key }
      end
    end

  end
end
