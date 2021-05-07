class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def show
  end

  def new
  end

  def edit
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/top'
  end

  private
  
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
