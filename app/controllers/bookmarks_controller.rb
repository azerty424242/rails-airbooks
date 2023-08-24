class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:destroy]


  def create
    @book = Book.find(params[:book_id])
    @bookmark = Bookmark.new(user: current_user, book: @book)
    # @bookmark.user = current_user
    # @bookmark.book = @book
    # NE PAS ENLEVER PLEASE !!! J'en ai besoin pour bien comprendre
    # NB: On sait qu'on a besoin de ces 2 variables par / à la join table


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
