Dir.glob "each_*.rb", &method(:require)
Dir.glob "*_each.rb", &method(:require)
