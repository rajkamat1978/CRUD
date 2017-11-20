class HomeController < ApplicationController
def index

end
def user
	puts params 
   #@first_name = params["firstname"]
   u = User.new
   u.name = params["firstname"]
   u.save 
   @errors = u.errors.full_messages.join(",") 
end

def update
 u = User.find(params[:id])	
 u.name=params[:name]
 u.save

end

end