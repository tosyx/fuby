require 'fuby/_'

class Object

  def to_pred
    method :===
  end

end
