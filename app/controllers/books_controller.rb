class BooksController < ApplicationController

def new
	@book = Book.new
end

def create
	@book = Book.new(book_params)
	@book.user_id = current_user.id
	@book.save
	redirect_to book_path(current_user)
end

def show
	#@books = Book.all
	@book = Book.find(params[:id])
	@user = User.find(params[:id])
	@book_new = Book.new

end

def index
	 #@user = User.find(params[:id])
	 @books = Book.all
	 @book = Book.new


end

def update
	book = Book.find(params[:id])
	book.update(book_params)
	redirect_to book_path

end

def destroy

end

private
def book_params
	params.require(:book).permit(:title, :body)
end







end
