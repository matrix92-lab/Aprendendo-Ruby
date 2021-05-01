#Utilizando API para verificar a hora
#DdRoot

fork {exec "echo 'senhasudo\n' | sudo -S curl -s http://worldtimeapi.org/api/timezone/America/Sao_Paulo -o time.txt "}
puts "Sincronizando a hora"
sleep(1)
fork {exec "cat time.txt | cut -d 'd' -f 2 |cut -d 'T' -f 2 | cut -d '.' -f 1 > time2.txt"}
fork {exec "echo 'senhasudo\n'| sudo -S ./hora.sh time2.txt"}
sleep(1)
puts "Encerrando a conexão"
sleep(1)
fork {exec "echo 'senhasudo\n' | sudo -S rm -r time*.txt"}
