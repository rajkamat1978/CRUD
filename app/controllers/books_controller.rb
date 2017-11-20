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
@book= Book.find(params[:id])
		
end	

def update	
@book = Book.find(params[:id])
@book.update_attributes(params.require(:book).permit(:title, :desc)	)

end

def destroy
     @book =Book.find(params[:id])
     @book.destroy		
  end


end
