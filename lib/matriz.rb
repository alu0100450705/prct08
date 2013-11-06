
require "./lib/racional.rb"

class Matriz
   attr_reader :matriz, :filas, :columnas
   
   def initialize(matriz)
      @matriz = Array.new(matriz)
      @filas = matriz.size
      @columnas = matriz[0].size
   end

   def dev_filas
      return @filas
   end
   
   def dev_columnas
      return @columnas  
   end
   
   #Sobrecargado el + para poder sumar 2 matrices
   def +(other)
      raise ArgumentError, "La longitud de las matrices no coincide." unless @filas == other.filas && @columnas == other.columnas       
      sum = Matriz.new(matriz)  #inicializas el vector sum con el primer con el primer
      dev_filas.times do |i|   
         dev_columnas.times do |j|
            sum.matriz[i][j] = self.matriz[i][j] + other.matriz[i][j]             
         end
      end
      return sum #devuelve un tipo array modificando el objeto m1 si se hace m3=m1+m2 -> Se necesita q sea tipo Matriz
   end
   
   #Sobrecargado el - para poder restar 2 matrices
   def -(other)
      raise ArgumentError, "La longitud de las matrices no coincide." unless @filas == other.filas && @columnas == other.columnas
      resta = Matriz.new(matriz)
      dev_filas.times do |i|   		
         dev_columnas.times do |j|
            resta.matriz[i][j] = self.matriz[i][j] - other.matriz[i][j]             
         end
      end
      return resta  #devuelve un tipo matriz modificando el objeto m1 si se hace m3=m1+m2
   end
   
   #Dos matrices A y B son multiplicables si el número de columnas de A coincide con el número de filas de B.
   def Producto_escalar (other)
#       if ()
      mul = Matriz.new(matriz)
      dev_filas.times do |i|   		
         dev_columnas.times do |j|
            mul.matriz[i][j] = self.matriz[i][j] * other
         end
      end
      return mul
   end

	#Imprime la matrices
   def to_s
      dev_filas.times do |i|   
         dev_columnas.times do |j|
	    print "#{matriz[i][j]}  "
         end
	 puts
      end
   end
   

   
#    
#       muestra la matriz (los indices empiezan por 0) seleccionando en el primer elemento el subarray al que pertenece el elemento que se quiere mostrar ,luego con el otro atributo seleccionamos la posicion que ocupa dicho elemento en este subvector.
#       ejemplo:  m1=[ [1,2,3] , [4,5,6] ]
#       puts m1[0,1] -> 2
#       puts m1[1,1] -> 6
#    
   
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
   
   
   #Realiza el opuesto de una matriz
   def -@ 
   op = Matriz.new(matriz)
      dev_filas.times do |i|   		
         dev_columnas.times do |j|
            op.matriz[i][j] = -self.matriz[i][j]
         end
      end
      return op
   
   end
   
   #Multiplica 2 matrices
   def * (other)
    sum = Matriz.new([[0,0,0],[0,0,0],[0,0,0]])
    dev_filas.times do |i|   
        other.columnas.times do |j|
           dev_columnas.times do |k|            
              sum.matriz[i][j] = sum.matriz[i][j] + self.matriz[i][k] * other.matriz[k][j]
           end
        end
    end
    return sum
  end
   
end


=begin 
cuarto = Fraccion.new(1, 4)
	quinto = Fraccion.new(1, 5)
	
	medio = Fraccion.new(1, 2)
	quinto2 = Fraccion.new(2, 5)
  
	MatrizA_frac = Matriz.new([[cuarto,cuarto],[quinto,quinto]])
	MatrizB_frac = Matriz.new([[cuarto,cuarto],[quinto,quinto]])
	Matriz_Resultado_frac = Matriz.new([[medio,medio],[quinto2,quinto2]])
	
m3=MatrizA_frac+MatrizB_frac

# m4=m1-m2
puts m3
# puts m4
=end
