Considere el desarrollo de una clase Ruby para representar Matrices. 

1.-) Cree una clase para representar Matrices usando desarrollo dirigido por pruebas (Test Driven Development - TDD) con la herramienta Rspec. 
2.-) Se ha es seguir la metodología de Integración continua (Continuos Integration) usando la herramienta Travis. 
3.-) Además se ha de comprobar el funcionamiento de la aplicación con la herramienta Guard de comprobación continua (Continuous testing) de manera que permita la ejecución de las pruebas definidas con rspec cuando se modifiquen. Puede ver un ejemplo en:  git@github.com:coromoto/CT-Point.git
4.-) Indique la URL (HTTP) del repositorio que ha desarrollado.

Funciones de la clase.

1. def initialize(matriz)
      
  

   def dev_filas
   
   
   def dev_columnas
    
   
   def +(other)
      
   
   def -(other)
     
   
   #Dos matrices A y B son multiplicables si el número de columnas de A coincide con el número de filas de B.
   def *(other)
#      

   def to_s
     
   
   def to_m(vector)
   
   
   def [](i,j)
    
   
   #Funcion que 
   def []=(i, j, k)
    
   #Para comprobar que dos matrices son equivalentes,primero se comprueba sus dimensiones. Si tienen las mismas dimensiones se comprueba que el valor de ambas matrices sean iguales en las mismas posiciones,si esto es así se devuelve true,false en otro caso.
   def ==(other)
    
   
   def -@ 
  
   def dev_filas
      
   
   def dev_columnas
      
   
   def +(other)
      
   
   def -(other)
     
   def *(other)
   
   def to_s
     
  
   
   def to_m(vector)
        
     
   end
   

  
   
   def [](i,j)
     
   
   #Funcion que 
   def []=(i, j, k)
      
   
   #Para comprobar que dos matrices son equivalentes,primero se comprueba sus dimensiones. Si tienen las mismas dimensiones se comprueba que el valor de ambas matrices sean iguales en las mismas posiciones,si esto es así se devuelve true,false en otro caso.
   def ==(other)
    
   
   def -@ 
   
  
   

