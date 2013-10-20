require 'fuby/take'

using Fuby

Dir.glob "#{ __FILE__.chomp ".rb" }_*.rb", &method(:require)
