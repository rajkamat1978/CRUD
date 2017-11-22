class BooksController < ApplicationController
	def index
	@books = Book.all
		
end

def new
 @book= Book.new
 @author = @book.build_author
	end 

def create
#params.require(:book).permit(     :title, :desc,     author: [ :name, :email ]   )
s=Book.create(params.require(:book).permit(     :title, :desc, :author,    author_attributes: [ :name, :email ]   ))



#params.require(:book).permit(:id, :title, :desc, book_author_attributes: [:name, :email, :final_submit, :submit, :destroy])

#b.build_author(params.require(:book).permit(:id, :title, :desc, author_attributes: [:id, :name, :desc]))

#def book_params 
	
#end
end
def book_params
        
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
