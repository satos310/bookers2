class BooksController < ApplicationController
  def new
    @books = Book.new
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  
  def book_params
    params.rewuire(:book).permit(:image, :title, :body)
  end
  
end
