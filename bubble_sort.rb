def bubble_sort(arr)
    sorted = false
    while sorted == false
        sorted = true
        (0...arr.length-1).each do |i|
            if arr[i] > arr[i+1]
                temp = arr[i] 
                arr[i] = arr[i+1]
                arr[i+1] = temp
                sorted = false        
            end
        end
    end
    return arr
end

p(bubble_sort([4,3,78,2,0,2]))