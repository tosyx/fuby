require_relative 'method_added_as_filter'
require_relative 'self_and_descendants'
require_relative 'try_each'

using Fuby

Enumerable.self_and_descendants.try_each.module_eval do

  method_added_as_filter :any?

end
