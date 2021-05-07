class BooksController < ApplicationController
  def index
    @book = Book.new
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.new
    @book = Book.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
