print 'Введите Вашу строку: '
user_string = gets.chomp

if user_string.empty?
    print ' '
else 
    array_worlds = user_string.split
    for i in 1..9
        array_worlds.each do |world|
            if world.include? i.to_s
                print world + ' '
            end
        end    
    end
end
