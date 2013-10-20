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

  end
end
