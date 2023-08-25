class BooksController < ApplicationController
  def index
    @books = Book.all
    @bookmarked_books_ids = current_user.bookmarks.pluck(:book_id) if user_signed_in?
  end

  def show
    @book = Book.find(params[:id])
    @bookmark = Bookmark.new
  end

  def create
    @book = Book.new(book_params)
    @book.owner = current_user

    if @book.save
      redirect_to owner_profile_path, notice: 'Book successfully added!'
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author_name, :category, :published_year, :cover, :price_per_day, :description)
  end
end
