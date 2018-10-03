class ApplicationController < ActionController::Base
	def hello
		render plain: "helloworld"
	end
end
