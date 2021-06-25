print 'Введите трёхзначное число, пожалуйста: '
number = gets.chomp().to_i
answer = ''
while number != 0
    new_number = number % 10
    number = number / 10
    answer += new_number.to_s
end
print 'Ваше новое число это: ' + answer