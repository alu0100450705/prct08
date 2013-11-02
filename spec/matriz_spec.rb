# -*- coding: utf-8 -*-

require "./lib/matriz.rb"

describe Matriz do

  before :each do
    @MatrizA = Matriz.new([[1,1],[2,2]])
	@MatrizB = Matriz.new([[1,1],[2,2]])
  end
  
  describe "Debe existir " do 
	it "filas " do
		(defined?(@MatrizA.filas)).should be_true
	end
	
	it "columnas " do
		(defined?(@MatrizA.columnas)).should be_true
	end
  end
  
  end
