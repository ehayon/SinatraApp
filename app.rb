require 'sinatra'
require 'erb'
require 'sinatra/flash'

set :root_url, "/login"

class SinatraApp < Sinatra::Application
	
	enable :sessions
	
	# uncomment if subclassing Sinatra::Base
	# register Sinatra::Flash
	
	# redirect '/' to the root url
	get '/' do
		redirect settings.root_url
	end
	
	helpers do
		alias_method :h, :escape_html
	end
	
	not_found do
		"Error 404: Page not found :("
	end
end

# require the models and routes
Dir.glob(File.dirname(__FILE__) + '/{models,routes}/*') {|f| require f}

