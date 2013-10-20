require 'fuby/descendants'

using Fuby

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)
