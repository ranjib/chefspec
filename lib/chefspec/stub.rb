class ChefSpec
  class Stub
    def self.search(&super_block)
      class Chef::Recipe.class_eval do
        def search(*args, &block)
          super_block.call(*args)
        end
      end
      class Chef::Resource.class_eval do
        def search(*args, &block)
          super_block.call(*args)
        end
      end
    end
  end
end


