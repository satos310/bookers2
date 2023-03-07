class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = User.all
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @user = current_user.id
    @users = User.all
    @book = Book.new
    @books = Book.all
  end

  private

  def book_params
    params.require(:book).permit(:image, :title, :body)
  end

end
