class Validator

	def initialize(file_path="")
		@emails=[]
		if !file_path.nil? && !file_path.to_s.empty?
			File.open(file_path, 'r') do |file|
		   		file.each do |line|
	    			@emails << line
	    		end
	    	end
    	end    	
	end

	def file_email_validate
		ret=[]
		@emails.each do |email|
			ret << email_validate(email)
		end
		ret
	end

	def email_validate(email)
		email_regex = %r{
						   ^ # Start of string
						   [0-9a-z] # First character
						   [0-9a-z.+_-]+ # Middle characters
						   [0-9a-z] # Last character
						    @ # Separating @ character
						   [0-9a-z] # Domain name begin
						   [0-9a-z-.]+ # Domain name middle
						   [0-9a-z] # Domain name end
						    $ # End of string
						 }xi # Case insensitive
		!(email_regex=~email).nil? && (email_regex=~email)==0 ? "PASS" : "FAIL"  
	end

end
