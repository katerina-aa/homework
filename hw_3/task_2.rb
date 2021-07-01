def createArrAges(l = 0)
    arr = Array.new(l)
    for i in 0..l-1
        print 'Введите возраст ' + (i+1).to_s + ' --> '
        arr[i] = gets.to_i
    end
    return arr
end

def twoOldestAges(arr = [], num = 2)
    arrOld = Array.new(2)
    for i in 0..num-1
        arrOld[i] = arr.max
        arr.delete(arrOld[i])
    end
    return arrOld
end

print 'Введите длину массива: '
arrLen = gets.to_i
print 'Введите сколько старших возврастов хотите получить: '
numAges = gets.to_i

arrAges = createArrAges(arrLen)
arrOldest = twoOldestAges(arrAges, numAges) 

print 'Самые старшие имеют возраст: '
print arrOldest