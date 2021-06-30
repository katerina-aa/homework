paint_can = 16

def input_less_1000(word)

    print 'Введите ' + word + ' в офисе в метрах: '
    variable = gets.chomp.to_i

    while variable > 1000
        puts 'Вы ввели число больше 1000. Попробуйте ещё раз.'
        print 'Введите ' + word + 'в офисе в метрах: '
        variable = gets.chomp.to_i
    end

    return variable
    
end

length = input_less_1000('длину')
width = input_less_1000('ширину')
height = input_less_1000('высоту')

area = 2 * height * (length  + width)
number_of_cans = area.to_f / paint_can

puts 'Количество банок краски: ' + number_of_cans.ceil.to_s
