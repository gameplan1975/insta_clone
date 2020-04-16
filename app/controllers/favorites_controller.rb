class FavoritesController < ApplicationController
    def create
      @favorite = Favorite.new(user_id: current_user.id, blog_id: params[:blog_id])
      @favorite.save
      redirect_to("/blogs/#{params[:blog_id]}")
    end
    
    def destroy
        
    end
end
