class FavoritesController < ApplicationController

  def index

  end

  def update
      favorite = Favorite.where(book: Book.find(params[:book]), user: current_user)
      if favorite == []
        #Create favorite
        Favorite.create(book: Book.find(params[:book]), user: current_user)
        @favorite_exists = true
      else
        #Delete favorite
        favorite.destroy_all
        @favorite_exists = false
      end
      respond_to do |format|
        format.html {}
        format.js {}
    end
  end



end
