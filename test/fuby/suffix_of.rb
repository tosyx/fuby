require 'fuby/suffix_of'

using Fuby

Dir.glob "*_suffix_of.rb", &method(:require)
