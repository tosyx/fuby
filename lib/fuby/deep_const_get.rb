module Fuby
  refine ::Module do

    def deep_const_get *names
      if 1 == names.length
        name  = names.first
        names = name.scan /[^:]+/ if /[:]+/ === name
      end
      names.inject(self) { |mod, name| mod.const_get name }
    end

  end
end
