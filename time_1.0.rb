#Utilizando API para verificar a hora
#DdRoot

fork {exec "curl -s http://worldtimeapi.org/api/timezone/America/Sao_Paulo > time.txt "}
puts "Sincronizando a hora"
sleep(1)
fork {exec "cat time.txt | cut -d 'd' -f 2 |cut -d 'T' -f 2 | cut -d '.' -f 1"}
sleep(01)
puts "Encerrando a conexão"
fork {exec "rm -r time.txt"}

