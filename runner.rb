class Employee
		attr_accessor :first_name, :last_name


		def initialize ( first_name: first_name, last_name: last_name)

			@first_name = first_name
			@last_name = last_name
		end


		def full_name
			"#{@first_name} #{@last_name}"

		end


		def email
			"#{@first_name}.#{@last_name}@oracle.com"
		end
	end


	class Enginner < Employee

end

