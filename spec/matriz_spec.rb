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

	it "Se debe poder sumar dos matrices de enteros" do
    (@MatrizA + @MatrizB ).matrix.inspect.should == "[[1, 2], [3, 3]]"
  end
  
  end
