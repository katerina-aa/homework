
def createArray (m, n)
    arrNumber = Array.new(m)
    for j in 0..m-1
        arrNumber[j] = Array.new(n)
        for i in 0..n-1
            print 'Введите елемент arr[' + j.to_s + '][' + i.to_s + '] --> '
            arrNumber[j][i] = gets.to_i
        end
    end
    return (arrNumber)
end

def sumMin(m, n)
    userArray = createArray(m, n)
    minString = 0
    for j in 0..m-1
        minString += userArray[j].min
        print userArray[j].min.to_s
        if j < m-1
            print ' + '
        else
            print ' = '
        end 
    end
    print minString
end

print 'Введите количество Ваших массивов: '
m = gets.to_i
print 'Введите длину Ваших массивов: '
n = gets.to_i

sumMin(m, n)
