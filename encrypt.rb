# Задача 40-1 — Шифрование MD5, SHA1
require 'digest'

puts "Введите слово или фразу для шифрования:"
user_input = STDIN.gets.chomp

puts "Каким способом зашифровать:\n1. MD5 \n2. SHA1"
choise = STDIN.gets.to_i

until choise.between?(1, 2)
  puts "Выберите 1 или 2"
  choise = STDIN.gets.to_i
end

puts "Вот что получилось:"

case choise
when 1 then puts Digest::MD5.hexdigest(user_input)
when 2 then puts Digest::SHA1.hexdigest(user_input)
end
