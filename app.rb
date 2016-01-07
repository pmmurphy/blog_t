require "sinatra"
require "sinatra/activerecord"
require "./models"

set :database, "sqlite3:blogdb.sqlite3"

# to display the users assigning them to an@users
# instance variable for use in the view

get '/' do 
	@users = User.all
	erb :index
	
end