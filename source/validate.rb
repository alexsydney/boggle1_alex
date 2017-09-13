# validate correct count

arr = ["C J I T", "N S I G", "Z J Z X", "L J Q A"]
result = nil
count_correct = 0
arr.each do |el|
    inner_arr = el.split(" ")
    inner_arr.each do |val|
        result = val.match(/^[A-Z]/)
        if result != nil
            count_correct += 1
        end

    end
end
puts count_correct
