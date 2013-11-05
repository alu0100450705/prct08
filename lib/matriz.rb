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
      sum = Array.new(matriz)
      while i < @filas 
         while j < @columnas 
	    sum[i][j] += other.matriz[i][j]
#             self.matriz[i][j] +=  other.matriz[i][j]
            j += 1
         end
         i += 1
         j = 0
      end
      return sum #devuelve un tipo array modificando el objeto m1 si se hace m3=m1+m2 -> Se necesita q sea tipo Matriz
   end
   
   def -(other)
      raise ArgumentError, "La longitud de las matrices no coincide." unless @filas == other.filas && @columnas == other.columnas
      @filas.times do |i|   		
         @columnas.times do |j|
            self.matriz[i][j] -= other.matriz[i][j]             
         end
      end
      return self  #devuelve un tipo matriz modificando el objeto m1 si se hace m3=m1+m2
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

   def to_s
      @filas.times do |i|   
         @columnas.times do |j|
	    print "#{matriz[i][j]}  "
         end
	 puts
      end
   end
   
#    =begin
#       muestra la matriz (los indices empiezan por 0) seleccionando en el primer elemento el subarray al que pertenece el elemento que se quiere mostrar ,luego con el otro atributo seleccionamos la posicion que ocupa dicho elemento en este subvector.
#       ejemplo:  m1=[ [1,2,3] , [4,5,6] ]
#       puts m1[0,1] -> 2
#       puts m1[1,1] -> 6
#    =end
   
   def [](i,j)
      matriz[i][j]
   end
   
   #Funcion que 
   def []=(i, j, k)
      matriz[i][j] = k
   end
   
   #Para comprobar que dos matrices son equivalentes,primero se comprueba sus dimensiones. Si tienen las mismas dimensiones se comprueba que el valor de ambas matrices sean iguales en las mismas posiciones,si esto es así se devuelve true,false en otro caso.
   def ==(other)
      dev=true
      if ((self.filas.size==other.filas.size) && (self.columnas.size==other.columnas.size))
         @filas.times do |i| 
            @columnas.times do |j|
               if (self.matriz[i,j] != other.matriz[i,j])
	          dev=false
	       else
	       end
	    end
	 end
      else
         dev=false
      end
      return dev
   end
   
   #corregir para que devuelve un objeto tipo Matriz
   def producto_escalar(k,matriz)
      sum = @matriz
      @filas.times do |i|   		
         @columnas.times do |j|
            sum[i][j] *= k  
         end
      end
      return sum
   end
   
end

m1=Matriz.new([[2,0,1],[3,0,0],[5,1,1]])
m4=Matriz.new([[2,0,1],[3,0,0],[5,1,1]])
# m2=Matriz.new([[1,0,1],[1,2,1],[1,1,0]])
# m3=m1+m2
# puts m1==m4
m3=m1.producto_escalar(5,m3)
puts m3
# puts m3
# puts m3
# puts m3
# m4=m1-m2
# puts m4
# m2=Matriz.new([[1,2],[3,4],[5,6]])
# puts (m1.matriz).size
# puts m1.matriz[1,5]
# puts m1
# puts m1[0,1]
# m1[0,1]=8
# puts m1[0,1]
# puts m1.filas
# puts m1.columnas
# puts m2.matriz
# puts m2.filas
# puts m2.columnas
