class Service
	def host
		#"http://#{Cli::Config.host}"
		"http://localhost:3000"
	end

	def request url, method = :get, *args
		HTTParty.send method, "#{host}#{url}", *args
	end
end