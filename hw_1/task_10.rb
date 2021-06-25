print 'Введите ваше число: '
number = gets.chomp().to_i
while number < 0
    puts 'Вы ввели отрицательное число.'
    print 'Попробуйте ещё раз: '
    number = gets.chomp().to_i
end

bit_number = number.to_s(2)
answer = bit_number.to_s().count("1")
print 'Количество 1 в битовом представление Вашего числа: ' + answer.to_s

