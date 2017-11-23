class BooksController < ApplicationController
	def index
	@books = Book.all
		
end

def new
 @book= Book.new
 @author = @book.build_author
	end 

def create
  params.require(:book).permit(     :title, :desc,     author: [ :name, :email ]   )
  s=Book.new(:title => params[:book][:title], :desc => params[:book][:desc])
  s.save
  author = s.build_author(:name => params[:book][:author][:name], :email => params[:book][:author][:email])
  author.save
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
