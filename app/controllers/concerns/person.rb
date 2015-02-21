class Person
	def initialize(name, age)
		@nickname = name[0, 3]
		@age = age
		@name = name
	end

	def introduce
		return @name + " " + @age
	end

	def birth_year
		return Time.now.year - @age.to_i
	end

	def nickname
		return @nickname
	end
end