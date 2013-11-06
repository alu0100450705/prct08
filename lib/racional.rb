require "./lib/gcd.rb"  #definicion del mcd

class Fraccion

   attr_reader :n,:d
   def initialize(n,d)

                raise ArgumentError, 'El primer argumento no es numerico' unless n.is_a? Numeric

                raise ArgumentError, 'El segundo argumento no es numerico' unless d.is_a? Numeric

                if d==0
                   raise RuntimeError, 'denominador no puede ser cero'

           else
         @n = n / gcd(n,d) 

         @d = d / gcd(n,d) 

                end
   end
   
   #Método que permite mostrar un objeto Fraccion,llamandolo directamente desde un puts o print

   def to_s
                if (@n==@d)

                   "#{@n}"
                else

                        if(@n < 0) and (@d < 0)  

                      "#{@n.abs}/#{@d.abs}"

                   else
            "#{@n}/#{@d}"

                        end
                end
   end

   
   #producto de un racional por otro racional
   def *(other)

       Fraccion.new(@n*other.n,@d*other.d)  

   end
   
   
   #Suma de racionales
   def +(other)

      if (@d==other.d)   #si los denominadores son iguales

         Fraccion.new(@n+other.n,@d)

      else  #si los denominadores son distintos
         Fraccion.new( ( (@n*other.d ) + ( @d*other.n) ),@d*other.d)

      end
   end
   
   def -(other)

      if (@d==other.d)   #si los denominadores son iguales

         Fraccion.new(@n-other.n,@d)

      else  #si los denominadores son distintos
         Fraccion.new( ( (@n*other.d ) - ((@d)*other.n ) ),@d*other.d)  # un -@d por q si no toma como si fuese una suma

      end
   end
        
        def div(other) 

                Fraccion.new(@n*other.d ,@d*other.n)

        end

end

