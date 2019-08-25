class UsersController < ApplicationController
 before_action :authenticate_user!, except: [:top]


def top
end

def show
  @user = User.find(params[:id])
  @books = Book.all
  @book = Book.new
end

def create
	@book = Book.new(book_params)
	book.save
	redirect_to book_path
end

def index
	# @user = User.find(params[:id])
	@users = User.all
	@book = Book.new
end
def edit
  	@user = User.find(params[:id])
end

def update
    @user = User.find(params[:id])
    if @user = User.update(user_params)
	    redirect_to user_path(current_user), notice:'Successfully updated'
	end
end

private
	def user_params
	    params.require(:user).permit(:name, :introduction, :profile_image)
	end


end