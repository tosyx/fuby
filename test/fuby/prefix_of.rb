require 'fuby/prefix_of'

using Fuby

Dir.glob "*_#{ __FILE__.chomp ".rb" }.rb", &method(:require)