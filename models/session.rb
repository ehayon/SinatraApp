class Session
	
	def self.authorized?(username, password)
		User.find(username, "password")
	end
	
end
