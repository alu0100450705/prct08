class Matriz
	
	attr_reader :matriz, :filas, :columnas

	def initialize(matriz)
		@matriz = Array.new(matriz)
		@filas = matriz.size
		@columnas = matriz[0].size
	end
	
	def +(other)
				 raise ArgumentError, "La longitud de las matrices no coincide." unless @filas == other.filas && @columnas == other.columnas
         i = 0
         j = 0
         sum = @matriz
         while i < @filas   		
           while j < @columnas
                sum[i][j] = sum[i][j] + other.matriz[i][j]
                j += 1
           end
           i += 1
           j = 0
         end
         return sum
   end
   
	   def -(other)
				 raise ArgumentError, "La longitud de las matrices no coincide." unless @filas == other.filas && @columnas == other.columnas
         sum = @matriz
         @filas.times do |i|   		
           @columnas.times do |j|
                sum[i][j] = sum[i][j] - other.matriz[i][j]
                
           end
         end
         return sum
   end
   
      def *(other)
         sum = @matriz
         @filas.times do |i|   		
           @columnas.times do |j|
                sum[i][j] = sum[i][j] * other
                
           end
         end
         return sum
   end

end
