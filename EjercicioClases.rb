class Persona

	attr_accessor :name, :age, :weigth, :heigth, :sexo
	attr_reader :dni

	def initialize (name,age,dni,sexo,weigth,heigth) # Constructor
		@name = name
		@age = age
		@dni = self.DNI
		@sexo = self.comprobarsexo(sexo)
		@weigth = @weigth
		@heigth = @heigth
		@imc = self.CalcularIMC(weigth,heigth)
	end

	def DNI


		@dni = rand(0..8)
		
	end

	def CalcularIMC(weigth,heigth)

	#(peso en kg/(altura^2en m)
		imc = (weigth/(heigth*heigth))
		puts case imc
			when 0..18.5
			   @imc = "bajo de peso"
			when 18.5..24.99
			   @imc = "Normal"
			when 25..30
			   @imc = "Sobnrepeso"
		   	when 30..100
			   @imc = "Obesidad"
			when String
			  @imc = "Error"
		end


	end

	def mayorEdad(age)

		if age>18

			"Es mayor de edad"

		else 

			"Es menor de edad"

		end

		
	end

	def comprobarsexo(sexo)

		puts case sexo
			when "m" 
			   sexocomprobado =  "masculino"
			when "F" 
			  sexocomprobado = "femenino"
			when "Otro" 
			  sexocomprobado = "otro"
			else
			  sexocomprobado = "No me diste ninguna opción valida"
		end

		
	end

	def mostrarinfo
		"Name: #{@name} age: #{@age} dni: #{@dni} #{@imc}"

		
	end





end

person1 = Persona.new("Joe",140,nil,"F",56,1.45)
p person1.mostrarinfo
