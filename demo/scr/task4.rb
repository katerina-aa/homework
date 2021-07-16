# Палиндром

def findPalindrome(num)
    return  {:status => 'failed', :reason => 'Вы передали в функцию не целочисленное число'} if num.class != Integer
    
    str_num = num.to_s
    arr_ind_pair = []
    arr_ind_nopair = []
    answer = []
    help_str1 = []
     

    if str_num == str_num.reverse
        return str_num.to_i
    end    

    for i in 1..str_num.size-2
        arr_ind_nopair << i if str_num[i - 1] == str_num[i + 1] 
        arr_ind_pair << i if  str_num[i - 1] == str_num[i] or str_num[i] == str_num[i + 1]
    end
    
    arr_ind_nopair.each do |elem|
        i = 1
        help_str1 << str_num[elem]
    
        while str_num[elem - i] == str_num[elem + i]              
            help_str1.unshift str_num[elem - i] if (elem - i >= 0) and (elem + i <= str_num.size - 1)
            help_str1.push str_num[elem + i] if (elem - i >= 0) and (elem + i <= str_num.size - 1)
            i += 1
        end
    
        answer << help_str1.join
        help_str1.clear
    
    end
    
    arr_ind_pair.each do |elem|
        i = 1
        help_str1 << str_num[elem]
        p help_str1
        while str_num[elem] == str_num[elem + i] 
            help_str1.push str_num[elem + i] if elem + i <= (str_num.size - 1)
            i += 1
        end
        
        answer << help_str1.join
    
        help_str1.clear
    end
    
    return 0 if answer.empty?
    return answer.max {|a, b| a.size <=> b.size }
end
