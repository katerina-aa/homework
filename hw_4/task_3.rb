=begin

We want our function to return:

1 if "X" won,
2 if "O" won,
0 if it's a cat's game (i.e. a draw),
-1 if the board is not yet finished (there are empty spots)

=end 

tic_tac = [[1,0,1], [0,1,2], [2,1,1]]

def gorizontal(arr)
    arr.each do |elem|
        if elem.all? 1 
            return 1
        elsif elem.all? 2
            return 2
        end
    end
    return 0
end

def create_new(arr)
    arr_n = Array.new(3) {Array.new(3)}
    for i in 0..2
        for j in 0..2
            arr_n[i][j] = arr[j][i]
        end
    end
    return arr_n
end

def diagonal(arr)
    diag1 = Array.new  
    diag2 = Array.new  
    for i in 0..2
       diag1.push arr[i][i]
       diag2.push arr[i][(i-2).abs]
    end
    return [diag1, diag2]
end

def checker(arr)
    temp_bool1 = gorizontal(arr)
    return temp_bool1 if temp_bool1 != 0

    arr_new = create_new(arr)
    temp_bool2 = gorizontal(arr_new) #vertical
    return temp_bool2 if temp_bool2 != 0

    two_diag = diagonal(arr)
    temp_bool3 = gorizontal(two_diag)
    return temp_bool3 if temp_bool3 != 0

    return -1 if arr.flatten(1).include? 0
    
    return 0
end

answer = checker(tic_tac)
print answer
