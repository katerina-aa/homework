size_File = 820
print 'Введите размер флешки в ГБ: '
size_FlashDrive_GB = gets.chomp().to_f
size_FlashDrive_MB = size_FlashDrive_GB * 1000
number = size_FlashDrive_MB / size_File
print 'Вы можете поместить на флешку ' + number.to_i.to_s + ' файлов.'