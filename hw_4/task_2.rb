def say_number (num)

    words_1_9 = ['Один', 'Два', 'Три', 'Четыре', 'Пять', 'Шесть', 'Семь', 'Восемь', 'Девять']
    words_10_19 = ['Десять', 'Одинадцать', 'Двенадцать', 'Тринадцать', 'Четырнадцать', 'Пятнадцать', 'Шестнадцать', 'Семьнадцать', 'Восемьнадцать', 'Девяднадцать']
    words_20_90 = ['Двадцать', 'Тридцать', 'Сорок', 'Пятьдесят', 'Шестьдесят', 'Семьдесят', 'Восемьдесят', 'Девяносто']
    
    if num < 10
        return words_1_9[num - 1]
    elsif num < 20
        return words_10_19[num % 10]
    else 
        return words_20_90[num / 10 -2] + ' ' + words_1_9[num % 10 - 1].downcase
    end

end

print 'Введите Ваше число: '
user_number = gets.to_i

answer = say_number(user_number)
print answer