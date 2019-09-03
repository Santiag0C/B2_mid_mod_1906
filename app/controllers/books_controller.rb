class ArtistsController < ApplicationController
  def index
      @books = Book.all
  end
end
