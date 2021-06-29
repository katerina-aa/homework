answer =  0
print 'Введите строку --> '
user_string = gets.chomp.downcase

user_string.each_char do |letter|

    count = user_string.count letter 
    if count > 1 
        answer += 1
        user_string.delete! letter
    end

end

print 'В Вашей строке найдено ' + answer.to_s + ' дубликата.'  
