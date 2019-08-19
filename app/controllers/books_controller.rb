class BooksController < ApplicationController

def top
end

def new
	@book = Book.new
end

def create
	book = Book.new(book_params)
	book.save
	
end

def index
	@user = User.all(params[:id])
end

def show
	@book = Book.find(params[:id])
end

def edit
	@book = Book.find(params[:id])
end

def update
	book = Book.find(params[:id])
	book.update(blog_params)

end

private
def book_params
	params.require(:book).permit(:title, :body)
end







end
