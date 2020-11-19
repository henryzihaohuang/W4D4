def my_uniq(arr)
    uniq_arr = []

    arr.each do |ele|
        if !uniq_arr.include?(ele)
            uniq_arr << ele
        end
    end

    uniq_arr
end

class Array

    def two_sum
        ans=[]
        self.each_with_index do |ele,i|
            self.each_with_index do |ele2,i2|
                if i2>i && (ele + ele2 )== 0
                    ans << [i, i2]
                end
            end
        end
        ans
    end
    
end

def my_transpose(arr)
    new_arr = Array.new(arr.length) { Array.new(arr[0].length) }

    (0...arr.length).each do |row|
        (0...arr[0].length).each do |col|
            new_arr[row][col] = arr[col][row]
        end
    end
    new_arr
end 

def stock_picker(arr)
    greatest_diff = 0
    indices_arr = []

    arr.each_with_index do |ele, i|
        arr.each_with_index do |ele2, i2|
            diff = ele2 - ele 
            if i2 > i && (diff) > greatest_diff
                greatest_diff = diff
                indices_arr = [i, i2]
            end
        end
    end

    indices_arr
end

