Considere el desarrollo de una clase Ruby para representar Matrices. 

1.-) Cree una clase para representar Matrices usando desarrollo dirigido por pruebas (Test Driven Development - TDD) con la herramienta Rspec. 
2.-) Se ha es seguir la metodología de Integración continua (Continuos Integration) usando la herramienta Travis. 
3.-) Además se ha de comprobar el funcionamiento de la aplicación con la herramienta Guard de comprobación continua (Continuous testing) de manera que permita la ejecución de las pruebas definidas con rspec cuando se modifiquen. Puede ver un ejemplo en:  git@github.com:coromoto/CT-Point.git
4.-) Indique la URL (HTTP) del repositorio que ha desarrollado.

Funciones de la clase.

   def initialize(matriz): Método que inicializa un objeto de tipo matriz pasada por parámetro.Se guardan el tamaño de las filas y las columnas. 
            
  
   def dev_filas: Método que devuelve el numero de filas
   
   
   def dev_columnas: Método que devuelve el numero de columnas
    
   
   def +(other): Función que suma una matriz con otra pasada por parámetro. El resultado lo almacena en un nuevo objeto de tipo matriz
      
   
   def -(other): Función que resta una matriz con otra pasada por parámetro. El resultado lo almacena en un nuevo objeto de tipo matriz
     
   
   
   def *(other): Método que multiplica dos matrices 
      Nota: Dos matrices A y B son multiplicables si el número de columnas de A coincide con el número de filas de B.
   

   
   def to_s: Método que imprime un objeto de tipo matriz.
   
   
   def [](i,j): Método de acceso a una determinada posicion del vector. Devuelve el valor que se encuentra en esa posicion
    
   
   def []=(i, j, k): Función que asigna a una posición (i,j) a un determinado valor k
    
   #Para comprobar que dos matrices son equivalentes,primero se comprueba sus dimensiones. Si tienen las mismas dimensiones se comprueba que el valor de ambas matrices sean iguales en las mismas posiciones,si esto es así se devuelve true,false en otro caso.
   def ==(other)
    
   
   def -@: Método que realiza la opuesta de la matriz que llama al méotodo

   
   def ==(other)
      Nota: Para comprobar que dos matrices son equivalentes,primero se comprueba sus dimensiones. Si tienen las mismas dimensiones se comprueba que el valor de ambas matrices sean iguales en las mismas posiciones,si esto es así se devuelve true,false en otro caso.
    
  
  
   

