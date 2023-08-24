class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:destroy]


  def create
    @book = Book.find(params[:book_id])
    # raise
    @bookmark = Bookmark.new(user: current_user, book: @book)

    if @bookmark.save
      flash[:notice] = "Bookmarked successfully!"
      redirect_to books_path
    else
      flash[:alert] = "Unable to bookmark. Please try again."
      redirect_to book_path(@book)
    end
  end


  def destroy
    @bookmark.destroy
    redirect_to owner_profile_path, status: :see_other
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
