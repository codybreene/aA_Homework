require 'byebug'

## O(n^2)

def sluggo_octo(fish)
    longest = 0
    fish.each do |fash1, i1|
        fish.each do |fash2, i2|
            debugger
            if i2 > i1 && fash2.length > fash1.length
                longest = fash2[i2]
            end
        end
    end
    longest   
end

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p sluggo_octo(arr)

