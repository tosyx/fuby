Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)

