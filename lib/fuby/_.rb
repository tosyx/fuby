require 'securerandom'

module Fuby end

class Module
protected

  unless method_defined? :prepend or private_method_defined? :prepend

    def prepend *prepended_modules
      include lifted = ::Module.new
      include *prepended_modules

      prepended_methods = prepended_modules.map do |this|
        this.instance_methods(false) | this.private_instance_methods(false)
      end.inject([], :|)

      method_added           = :"fuby_#{ ::SecureRandom.uuid.gsub '-', '_' }"
      prepended_method_added = :"fuby_#{ ::SecureRandom.uuid.gsub '-', '_' }"

      singleton_class.class_eval do
        define_method prepended_method_added do |prepended_method|

          if instance_methods(false).include? prepended_method or        # if the prepended_method exists locally
             private_instance_methods(false).include? prepended_method

            existing_method = :"fuby_#{ ::SecureRandom.uuid.gsub '-', '_' }"

            alias_method existing_method, prepended_method               # rename the existing method and remove
            remove_method prepended_method

            eval %{
              #{ 'private'   if   private_method_defined? existing_method }
              #{ 'protected' if protected_method_defined? existing_method }
              def #{ prepended_method } *sig, &blk; super end
            }

            lifted.send :define_method, prepended_method do |*sig, &blk| # redefine the existing method in the lifted module
              send existing_method, *sig, &blk
            end
            lifted.send :protected, prepended_method
          end
        end

        alias_method method_added, :method_added                         # redefine method_added to handle these prepended_methods

        define_method :method_added do |added_method|
          send prepended_method_added, added_method if prepended_methods.include? added_method
          send method_added, added_method
        end
      end

      prepended_methods.each do |prepended_method|
        send prepended_method_added, prepended_method                    # apply it now for any existing methods
      end

      self
    end

  end

  unless method_defined? :refine or private_method_defined? :refine

    def refine arg, &blk
      fuby_refinements[arg] << Module.new(&blk)
    end

    def fuby_refinements
      @fuby_refinements ||= Hash.new { |hsh, key| hsh[key] = [] }
    end

    module ::Kernel

      raise NameError, "Fuby: trying to define Module#refine but Kernel#using already defined" \
        if defined? using

      def using mod
        mod.send(:fuby_refinements).each do |target, sources|
          sources.each do |source|
            target.send :prepend, source unless target < source
          end
        end
      end

    end

  end
end

Dir.glob "#{ __FILE__.chomp ".rb" }?*.rb", &method(:require)
