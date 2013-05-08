require 'delegate'

using Fuby

module Fuby
  class Attributes < SimpleDelegator

    def [] key
      __getobj__.send :"#{ __name__ }_get", key
    end

    def []= key, val
      __getobj__.send :"#{ __name__ }_set", key, val
    end

  end
end
