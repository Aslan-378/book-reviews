class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to book_path(@book)
  end

  private

  def book_params
    params.require(:book).permit(:name, :author, :genre, :rating)
  end
end
