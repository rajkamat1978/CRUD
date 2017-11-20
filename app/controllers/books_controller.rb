class BooksController < ApplicationController
	def index
	@books = Book.all	
end

def new

	end 

def create
	e=Book.new	
s.title=params[:book][:title]
s.desc = params[:book][:desc]
s.save

end

def show

end
	

def edit
@book1= Book.find(params[:id])
		
end	

def update	
@book1 = Book.find(params[:id])
@book1.update_attributes(params.require(:book).permit(:title, :desc)	)

end

def destroy
     @book1 =Book.find(params[:id])
     @book1.destroy		
  end


end
