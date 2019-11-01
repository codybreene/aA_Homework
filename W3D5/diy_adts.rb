## DIY ADTs

##1

class Stack

    attr_reader :ivar

    def initialize
        @ivar = []
    end

    def push(el)
        @ivar << el
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

    attr_reader :ivar

    def initialize
        @ivar = []
    end

    def enqueue(el)
        @ivar.unshift(el)
    end

    def dequeue
        @ivar.pop
        @ivar
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
        @imap.each_with_index do |char, i|
            if @imap[i][0] == key
                dupe = true
                @imap[i][1] == value
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
        @imap.with_index do |i|
            @imap.delete_at(i) if @imap[i].include?(key)
        end
    end

    def show
        @imap
    end
end


