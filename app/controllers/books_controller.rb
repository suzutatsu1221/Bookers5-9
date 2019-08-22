class BooksController < ApplicationController

def new
	@book = Book.new
end

def create
	@book = Book.new(book_params)
	@book.user_id = current_user.id
	@book.save
	redirect_to user_path(current_user)
end

def show
	@books = Book.all
end

def edit
end

def update
	book = Book.find(params[:id])
	book.update(book_params)

end

private
def book_params
	params.require(:book).permit(:title, :body)
end







end
