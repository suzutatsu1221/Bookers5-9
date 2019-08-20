class UsersController < ApplicationController
  
  def top
end
  def show
  @user = User.find(params[:id])
  @book = Book.new
  @books = Book.all
  end

  def about
  end




end

