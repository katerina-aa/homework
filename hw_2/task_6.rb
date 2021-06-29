print 'Введите Вашу строку: '
user_string = gets.chomp

if user_string.empty?
    print ' '
else 
    array_worlds = user_string.lines(' ')

    for i in 1..9
        array_worlds.each do |world|
            world.delete! ' '
            if world.include? i.to_s
                print world + ' '
            end
        end    
    end

end


