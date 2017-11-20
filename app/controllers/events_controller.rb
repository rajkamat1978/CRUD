class EventsController < ApplicationController
	def index
	@events = Event.all	
end
def new


	end 
def create
	e=Event.new
e.title=params[:event][:title]
e.desc = params[:event][:desc]
e.save

end

def show
@event =Event.find(params[:id])
end
	

def edit
@event=Event.find(params[:id])
		
end	

def update	
@event = Event.find(params[:id])
@event.update_attributes(params.require(:event).permit(:title, :desc)	)

end
def delete
     @event =Event.find(params[:id])
     @event.distroy		
  end

end
