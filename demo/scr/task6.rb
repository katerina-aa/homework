# Числовая последовательность

def numerical_sequence(len_seq, number)
    return  {:status => 'failed', :reason => 'Вы ввели не целочисленное число'} if min.class != Integer or max.class != Integer
    answer = []
    first_num = Math.sqrt(number).ceil 

    for i in 0..len_seq - 1
        answer << first_num + i
    end

    return answer
end
