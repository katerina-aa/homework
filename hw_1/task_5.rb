print 'Здравствуйте! Введите, пожалуйста, расстояние в км между двумя городами --> '
distance = gets.chomp().to_f
print 'Спасибо! Введите время, за которое Вы хотите добраться --> '
time = gets.chomp().to_f
velocity = distance / time 
print 'Вам нужно ехать со скоростью ' + velocity.round(1).to_s + ' км/час!'
