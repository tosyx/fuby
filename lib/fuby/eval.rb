require 'fuby/_'
require_relative 'intercept'

module Fuby

  refine ::Hash do

    def hash_eval &body
      intercept do |key, *sig, &blk|
        val = self[key]
        key = key.to_s.chomp!("!").to_sym and self.delete key if /!$/ === key.to_s

        case sig
        when [] then sig.unshift ({}) if blk
        when [Object]
        else raise ::ArgumentError
        end

        case arg = sig.first
        when nil then next val
        when ::Hash
          self[key] = {} if self[key].nil?
          self[key].merge! arg
          self[key].hash_exec &blk if blk
        else
          self[key] = arg
        end

        self[key]
      end.instance_exec &body
    end

    alias_method :hash_exec, :hash_eval

  end

  refine ::Object do

    def curry_eval *pre, &shell

      if Hash === pre.last
        defaults = pre.pop
        intercept { |*sig, &blk| send *pre, sig, (sig.pop_options defaults), &blk }

      else
        intercept { |*sig, &blk| send *pre, &blk }

      end.instance_exec self, &shell
    end

    alias_method :curry_exec, :curry_eval

  end

end
