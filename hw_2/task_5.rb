count = []

print 'Пожалуйста, введите Вашу строку: '
user_string = gets.chomp
array_worlds = user_string.lines(' ') 


array_worlds.each do |world|
    world.delete! ' '
    count.push(world.length)
end

print 'Самое короткое слово имеет длину: ' + count.min.to_s
