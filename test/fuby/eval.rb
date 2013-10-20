Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)
