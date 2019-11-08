require 'byebug'
## O(n^2)

def sluggo_octo(fish)
    longest = 0
    fish.each_with_index do |fish1, i1|
        fish.each_with_index do |fish2, i2|
            # debugger
            if i2 > i1 && (fish2.length > fish1.length)
                longest = fish[i2]
            end
        end
    end
    longest   
end

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p sluggo_octo(arr)

def domo_octo(fish)
    return fish if fish.length <= 1
    mid = fish.length / 2
    left =  domo_octo(fish[0...mid])
    right = domo_octo(fish[mid..-1])
    merge_octos(left, right)
end

def merge_octos(left, right)
    merged = []
    until left.empty? || right.empty? 
        if left.first.length < right.first.length
            merged << left.shift 
        else   
            merged << right.shift 
        end
    end
    (merged + left + right)
end

p domo_octo(arr)[-1]

def clever_octo(fish)
    longest = fish[0]
    i = 1
    while i < fish.length  
        longest = fish[i] if fish[i].length > longest.length
        i += 1
    end
    longest
end

p clever_octo(arr)