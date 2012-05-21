# routes/login.rb

class SinatraApp < Sinatra::Application

	# get:/login responds with the login form
	get '/login' do
		@page_title = "Login"
		erb :login, :layout => true
	end

	#post:/login login form submitted
	post '/login' do
		# authorize the user
		# if invalid - redirect the user back to the login page
		# implement flash notifications
		if Session.authorized?(params[:username], "password")
			flash[:notice] = "You are now signed in!"
		else
			flash[:alert] = "Incorrect username/password combination"
		end
		redirect '/login'
	end
	
end