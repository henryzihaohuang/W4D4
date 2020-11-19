def my_uniq(arr)
    uniq_arr = []

    arr.each do |ele|
        if !uniq_arr.include?(ele)
            uniq_arr << ele
        end
    end

    uniq_arr
end