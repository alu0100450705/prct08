# -*- coding: utf-8 -*-

require "./lib/matriz.rb"

describe Matriz do

  before :each do
    @MatrizA = Matriz.new([[1,1],[2,2]])
    @Matrizop = Matriz.new([[-1,-1],[-2,-2]])
    @MatrizB = Matriz.new([[1,1],[2,2]])
    @MatrizC = Matriz.new([[1,1],[2,2]])
	@Matriz_Resultado = Matriz.new([[2,2],[4,4]])
	@Matriz_Resultado1 = Matriz.new([[0,0],[0,0]])
	@MatrizAmul = Matriz.new([[2,0,1],[3,0,0],[5,1,1]])
    @MatrizBmul = Matriz.new([[1,0,1],[1,2,1],[1,1,0]])
    @Matriz_Resultado_mul = Matriz.new([[3,1,2],[3,0,3],[7,3,6]])
  end
  
	it "Deben existir filas " do
		(defined?(@MatrizA.filas)).should be_true
	end
	
	it "Deben existir columnas " do
		(defined?(@MatrizA.columnas)).should be_true
	end
	
	it "Tamano de filas " do
		@MatrizA.filas.should eq 2
	end
	
	it "Tamano de columnas " do
		@MatrizA.columnas.should eq 2
	end
	
	it "Se puede accerdera un subindice" do 
		@MatrizA.matriz[0][0].should eq 1
	end
	
	it "Se puede modificar un subindice" do 
		@MatrizC.matriz[0][0] = 2
		@MatrizA.matriz[0][0].should eq 1
	end
	
	it "Se debe poder sumar dos matrices de enteros" do
		( @MatrizA + @MatrizB ).should eq @Matriz_Resultado
	end
  
   it "Se debe poder restar dos matrices de enteros" do
    (@MatrizA - @MatrizB ).should eq @Matriz_Resultado1
   end
  
  it "Se debe poder multiplicar por un numero" do
    (@MatrizA.Producto_escalar (2) ).should eq @Matriz_Resultado
  end
  
  it "Se debe poder compara 2 matrices" do
	(@MatrizA == @MatrizB).should eq true
  end
  
  it "Se debe poder hacer el opuesto" do 
	(-@MatrizA).should eq @Matrizop
  end
  
  it "Se debe poder multiplicar por un numero" do 
	(@MatrizAmul * @MatrizBmul).should eq @Matriz_Resultado_mul
  end
  
  
  end
