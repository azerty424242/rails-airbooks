class Owner::BooksController < ApplicationController
  before_action :authenticate_user!

  def new
    @book = Book.new
    @book.owner = current_user
  end

  # def create
  #   raise
  #   @book = Book.new(book_params)
  #   @book.owner = current_user

  #   if @book.save
  #     redirect_to owner_profile_path, notice: 'Book successfully added!'
  #   else
  #     render :new
  #   end
  # end

  # private

  # def book_params
  #   params.require(:book).permit(:title, :author_name, :category, :published_year, :cover, :price_per_day, :description)
  # end
end
