
count = []

print 'Пожалуйста, введите Вашу строку: '
user_string = gets.chomp
array_worlds = user_string.split

array_worlds.each do |world|
    count.push(world.length)
end

print 'Самое короткое слово имеет длину: ' + count.min.to_s
