class Person

	def initialize (name,age,ced) # Constructor
		@name = name
		#@age = age
		 @codigo = self.genCod(ced)
		self.age = age #call the method age

	end
	def get_info
		@additional_info = "Interesting"
		"Name: #{@name}, age: #{@age} ced: #{@codigo}"
	end
=begin

	def mult(a,b)
		"resultado #{a*b}"
	end

	#Geter and Seter 
	def name # get
		@name
	end

	def name= (new_name) #set
		@name = new_name
	end

	def age # get
		@age
	end

	def age= (new_age) #set
		@age = new_age
	end
=end
	#atributos de acceso
	attr_accessor :name, :age #getters and seters
	#attr_reader :name #solo lee
	#attr_writer :name #solo escribe

	def age= (new_age)

		#@age ||= 5 #Si el valor de age está vacio entra en 5
		@age = new_age unless new_age > 120
		
	end

 	def genCod(ced)

     ced**2

 	end

end

person1 = Person.new("Joe",140,99)
p person1.instance_variables #Muestra las variables de instancia
p person1.get_info # Trae la información
#puts person1.mult(3,5)
person1.name=("Jhon")
person1.age=(19)
p person1.get_info # Trae la información
