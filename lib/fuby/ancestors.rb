module Fuby
  refine ::Module do

    def ancestors type = nil
      super().tap { |mods| return mods.select { |mod| type === mod } if type }
    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)
