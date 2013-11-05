# -*- coding: utf-8 -*-

require "./lib/matriz.rb"

describe Matriz do

  before :each do
  @MatrizA = Matriz.new([[1,1],[2,2]])
	@MatrizB = Matriz.new([[1,1],[2,2]])
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

  it "Se debe poder sumar dos matrices de enteros" do
    (@MatrizA + @MatrizB ).should == [[2,2],[4,4]]
  end
  
  
  
  end
