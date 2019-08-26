class BooksController < ApplicationController
before_action :authenticate_user!
before_action :correct_user, only: [:edit, :update]

def new
	@book = Book.new
end

def create
	@book = Book.new(book_params)
	@book.user_id = current_user.id
	if @book.save
	redirect_to book_path(@book), notice:" successfully"
    else
    	@books = Book.all
    	render :index
end
end

def show
	#@books = Book.all
	@book = Book.find(params[:id])
	#@user = User.find(params[:id])
	@book_new = Book.new

end

def index
	 #@user = User.find(params[:id])
	 @books = Book.all
	 @book = Book.new


end

def edit
	@book = Book.find(params[:id])
end
def update
	@book = Book.find(params[:id])
	if @book.update(book_params)
	redirect_to book_path(@book), notice:'successfully updated'
    else
    	render :edit
    end
end

def destroy
book = Book.find(params[:id])
book.destroy
redirect_to books_path

end

private
def correct_user
    @book = Book.find(params[:id])
    if @book.user == current_user
    else
    	redirect_to books_path
    end
end
def book_params
	params.require(:book).permit(:title, :body)
end







end
