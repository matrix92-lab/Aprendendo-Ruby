#Ddroot
#calc_1.0 apredendo Ruby
#_____________________________________________________


#Definindo a classe
class Calculadora

#metodo para opções de operação
	def oper
		
        	puts "1 - Multiplicação"
        	puts "2 - Adição"
        	puts "3 - Subtração"
        	puts "4 - Divisão"
		puts "Escolha uma operação"
		$op = gets
        	case $op.to_i
			when 1
			puts "Multiplicação Escolhida"
			when 2
			puts "Adição escohida"
			when 3
			puts "Subtração escolhida"
			when 4
			puts "Divisão escolhida"
		else
			puts "Operação indefinida"
			abort
		end
	end

#metodo para iserção de operandos	
	def n1
                puts "Escola um numero"
                @@a = gets.chomp.to_i
        end

        def n2
                puts "Escolha outro numero"
                @@b = gets.chomp.to_i
        end

#metodo para resultado

	def result
		case $op.to_i
			when 1
			puts "O resultado é "
			puts @@a*@@b
			when 2
			"O resultado é "
			puts @@a+@@b
			when 3
			"O resultado é "
			puts @@a-@@b
			when 4
			"O resultado é "
			puts @@a/@@b
		else
			"Operação indefinida"
		end
	end
	


end

#Chamada da classe
calc =Calculadora.new
#Chamada do metodo de opções dentro da classe
calc.oper
#Chamada do metodo de inserção de operandos dentro da classe
calc.n1
calc.n2
#Chamada do metodo de resultado dentro da classe
calc.result
#_____________________________________________________________




