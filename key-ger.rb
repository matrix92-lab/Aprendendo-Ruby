
#gerenciador e gerador de senhas Key-Ger_1.0
#DdRoot - "Pensando como um pirata evoluindo como jedi"

require 'securerandom'
require'base64'

key = SecureRandom.alphanumeric
arq = File.new("key-ger.txt", "a")
puts "Digite uma pista clue-key"
clue = gets
enc = Base64.encode64 clue
arq.puts enc
arq.puts key
arq.close

puts clue
puts key
