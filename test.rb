def Password()
    lenPassword = rand(2..20)
    charsUpper = ('A'..'Z').to_a
    charsLowerNumber = ('a'..'z').to_a + ('0'..'9').to_a
    helpLen = charsLowerNumber.size
    yourPass = []
    yourPass << charsUpper[rand(charsUpper.size)]
    (lenPassword - 1).times {
        yourPass << charsLowerNumber[rand(helpLen)]
    }
    return yourPass.join
end
#print Password()

def myShuffle(arr)
    newArr = []
    arrSize = arr.size
    while !arr.empty?
        ind = rand(arr.size)
        newArr << arr[ind]
        arr.delete_at(ind)
        arrSize =- 1
    end

    return newArr
end

print myShuffle([1,2,3])