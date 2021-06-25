current_year = 2021
print 'Введите год Вашего рождения(четырехзначное число): '
user_year = gets.chomp().to_i
age = current_year - user_year
print 'Ваш возраст: ' + age.to_s + '!'

