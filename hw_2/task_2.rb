
def input_less_100(word)

    print 'Введите ' + word 
    variable = gets.chomp.to_i

    while variable > 100
        puts 'Вы ввели число больше 100. Попробуйте ещё раз.'
        print 'Введите ' + word
        variable = gets.chomp.to_i
    end

    return variable

end

price = []
load_weidht = []
for i in 0..2
    price[i] = input_less_100( 'сумму за ' + (i + 1).to_s + ' песок: ')
    load_weidht[i] = input_less_100( 'объем контейнера номер ' + (i + 1).to_s + ': ')
end

sum = 0
price.sort!
load_weidht.sort!

for i in 0..2
    sum += price[i].to_i * load_weidht[i].to_i
end

print 'Поздравляем! Вы можете заработать ' + sum.to_s + ' рублей!'
