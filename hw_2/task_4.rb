
print 'Введите нить ДНК: '
DNA = gets.chomp.upcase
DNA.gsub!(/[TAGC]/, 'T' => 'A', 'A' => 'T', 'G' => 'C', 'C' => 'G')
print DNA
