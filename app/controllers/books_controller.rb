class BooksController < ApplicationController

  before_action :get_author_for_book
  before_action :get_book, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @book = @author.books.new
  end

  def create
    @book = @author.books.create(book_params)

    redirect_to @author
  end

  def edit
  end

  def update
    
    @book.update(book_params)

    redirect_to author_path(@author)
  end

  def destroy
    @book.destroy
    
    redirect_to @author
  end

  private

  def get_author_for_book
    @author = Author.find(params[:author_id])
  end

  def get_book
    @book = @author.books.find(params[:id])
  end

  def book_params
    params[:book].permit(:name)
  end
end
