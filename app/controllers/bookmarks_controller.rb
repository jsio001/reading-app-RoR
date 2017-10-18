class BookmarksController < ApplicationController

before_action :prepare_book

  def new
  end

  def create
    @bookmark = @book.bookmarks.new(bookmark_params)
    if @bookmark.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to book_path(params[:book_id])
    else
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to book_path(params[:book_id])
  end

private

  def bookmark_params
    params.require(:bookmark).permit(:page, :description)
  end

  def prepare_book
    @book = Book.find(params[:book_id])
  end

end
