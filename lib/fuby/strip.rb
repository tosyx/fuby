require_relative '+'
using Fuby

module Fuby
  refine ::String do

    def strip pattern = nil
      return super unless ::RegExp === pattern
      strip_beginning(pattern).strip_ending(pattern)
    end

    def strip_beginning pattern
      pattern = /^/ + pattern unless /^\^/ === pattern.source
      sub pattern, ''
    end

    def strip_ending pattern
      pattern = pattern + /$/ unless /\$$/ === pattern.source
      sub pattern, ''
    end

  end
end
