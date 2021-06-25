print 'Введите сколько у Вас денег: '
user_money = gets.chomp().to_f
print 'Введите цену одной шоколадки: '
choco_price = gets.chomp().to_f
number = user_money / choco_price
rest_money = user_money % choco_price
print 'Вы можете купить ' + number.to_i.to_s + ' штук шоколадок. '
print 'И у Вас останется ' + rest_money.round(2).to_s + ' денег.'