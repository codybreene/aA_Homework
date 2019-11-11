 class LRUCache
    def initialize(n)
        @cache = Array.new(n)
    end

    def count
      @cache.count {|el| el unless el == nil}
    end

    def add(el)
        if !include?(el)
            @cache.shift 
            @cache << el
        else
            index = @cache.index(el)
            @cache.delete_at(index)
            @cache << el
        end
    end

    def show
      @cache
    end

    private
    def include?(el)
        return true if @cache.include?(el)
        false
    end

  end



johnny_cache = LRUCache.new(4)
johnny_cache.add("I walk the line")
johnny_cache.add(5)
johnny_cache.count # => returns 2
johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})
p johnny_cache.show