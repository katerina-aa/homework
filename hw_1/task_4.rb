print 'Введите радиус окружности: '
radius_circle = gets.chomp().to_i
radius_in_square = radius_circle ** 2
area_circle = 3.14 * radius_in_square
print 'Площадь Вашей окружности равна: ' + radius_in_square.to_s + '*pi'
print ', это приблизительно: ' + area_circle.to_s 