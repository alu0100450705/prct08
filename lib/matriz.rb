class Matriz
	
	attr_reader :matrix, :filas, :columnas

	def initialize(matriz)
		@matrix = matriz
		@filas = matriz.size
		@columnas = matriz[0].size
	end
	
end
