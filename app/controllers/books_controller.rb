class BooksController < ApplicationController

def new
	@book = Book.new
end

def create
	@book = Book.new
	Book.save
end

def show
end

def edit
	@book = Book.find(params[:id])
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
