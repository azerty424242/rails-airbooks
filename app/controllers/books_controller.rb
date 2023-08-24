class BooksController < ApplicationController
  def index
    @books = Book.all
    @bookmarked_books_ids = current_user.bookmarks.pluck(:book_id) if user_signed_in?
  end

  def show
    @book = Book.find(params[:id])
    @bookmark = Bookmark.new
  end
end
