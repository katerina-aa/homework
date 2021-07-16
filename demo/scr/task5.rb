# Счастливые билеты

def tickets( min, max )
    
    return  {:status => 'failed', :reason => 'Вы ввели не целочисленное число'} if min.class != Integer or max.class != Integer
    return  {:status => 'failed', :reason => 'Числа должны быть натуральные и шестизначные!'} if min < 0 or min > 999999 or max < 0 or max > 999999
    
    max, min = min, max if min > max  
    answer = {
        :winner => '', 
        :lusky => [0, 0]
    }

    for number in min..max
       
        arr_num = number.digits.concat([0,0,0,0,0]).slice(0, 6)
        
        half_number_1 = arr_num.slice(0..2)
        half_number_2 = arr_num.slice(3..5)

        even_numbers = []
        odd_numbers = []

        arr_num.each do |num| 
            even_numbers << num if num.even?
            odd_numbers << num if num.odd?
        end

        answer[:lusky][0] += 1 if  half_number_1.sum == half_number_2.sum
        answer[:lusky][1] += 1 if  even_numbers.sum == odd_numbers.sum
    end

    if answer[:lusky][0] > answer[:lusky][1]
        answer[:winner] = 1 
    elsif answer[:lusky][0] < answer[:lusky][1]
        answer[:winner] = 2 
    else
        answer[:winner] = 'both' 
    end

    return  answer

end
