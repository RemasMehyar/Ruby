def bubbleSort (array)
    for i in 0...array.length
        for j in 0...array.length-1
            if array[j] > array[j+1]
                temp = array[j+1]
                array[j+1] = array[j]
                array[j]=temp
            end
        end
    end
            array
    end
        p bubbleSort([4,3,78,2,0,2])