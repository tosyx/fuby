require_relative 'intercept'

module Fuby
  refine ::Object do

    def curry_eval *pre, &shell

      if Hash === pre.last
        defaults = pre.pop
        intercept { |*sig, &blk| send *pre, sig, (sig.pop_options defaults), &blk }

      else
        intercept { |*sig, &blk| send *pre, &blk }

      end.instance_exec self, &shell
    end

  end
end
