rate = 0.838
print 'Введите сумму в долларах: '
usr = gets.chomp().to_f
eur = usr * rate
print 'У Вас ' + eur.round(2).to_s + ' евро.'
