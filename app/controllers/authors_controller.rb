class AuthorsController < ApplicationController

  before_action :get_author, only: [:show, :edit, :update, :destroy] 

  def index
    @authors = Author.all
  end

  def show
    @books = @author.books
  end

  def new
    @author = Author.new
  end

  def create
    Author.create(author_params)

    redirect_to authors_path
  end

  def edit
  end

  def update
    @author.update(author_params)

    redirect_to @author
  end

  def destroy
    @author.destroy

    redirect_to authors_path
  end
  
  private

  def get_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name, :number_of_books, :genre)
  end

end
