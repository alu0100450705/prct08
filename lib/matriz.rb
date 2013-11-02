require 'matrix'

class Matriz
	
	attr_reader :matriz, :filas, :columnas

	def initialize(matriz)
		@matriz = matriz
		@filas = matriz.size
		@columnas = matriz[0].size
	end
	
	def +(other)
         i = 0
                j = 0
                sum = @matriz
                while i < @filas   		
                   while j < @columnas
                        sum[i,j] = sum[i,j] + other.matriz[i,j]
                        j += 1
                   end
                   i += 1
                   j = 0
                end
                return sum
        end
	
end
