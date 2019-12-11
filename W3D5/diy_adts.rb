## DIY ADTs

##1

class Stack

    # attr_reader :ivar don't want to give access to stack

    def initialize
        @ivar = []
    end

    def push(el)
        @ivar << el
        self #don't return the 
    end

    def pop
        @ivar.pop
        @ivar
    end

    def peek
        @ivar[-1]
    end
end

stack = Stack.new

#2

class Queue

    # attr_reader :ivar don't want to give access to queue

    def initialize
        @ivar = []
    end

    def enqueue(el)
        @ivar.unshift(el)
        self #return the object, not the queue
    end

    def dequeue
        @ivar.pop
        # @ivar you don't want to expose the queue
    end 

    def peek
        @ivar[-1]
    end
end

class Map

    def initialize
        @imap = []
    end

    def set(key, value)
        dupe = false
        @imap.each_with_index do |pair, i|
            if pair[0] == key
                dupe = true
                @imap[i][1] = value
            else
                pair
            end
        end
        if dupe == false
            @imap << [key, value] 
        end      
    end

    def get(key)
        @imap.each {|pair| return pair[1] if pair[0] == key}
    end

    def delete(key)
        @imap.each_with_index do |char, i|
            @imap.delete_at(i) if @imap[i].include?(key)
        end
    end

    def show
        @imap
    end
end


