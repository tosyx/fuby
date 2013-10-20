require_relative 'descendants'

using Fuby

module Fuby
  Enumerables = ::Enumerable.descendants(Class)
end
