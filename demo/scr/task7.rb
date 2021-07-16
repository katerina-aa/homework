# Ряд Фибоначчи для диапазона

def seriesFibonacci(hh)
    answer1 = [1, 1]

    if hh.length == 1 
        for i in 2..hh[:len] - 1 
            answer1 << answer1[i - 2] + answer1[i - 1]
        end
        return answer1

    elsif hh.length == 2 
        hh[:min], hh[:max] = hh[:max], hh[:min] if hh[:min] > hh[:max]
        i = 2
        while answer1.last < hh[:min]
            answer1 << answer1[i - 2] + answer1[i - 1]
            i += 1
        end

        j = 2
        answer2 = answer1.last(2)

        while answer2.last < hh[:max]
            answer2 << answer2[j - 2] + answer2[j - 1]
            j += 1
        end
        answer2.delete_at(0)
        return answer2
    end
    
    return 0
end
