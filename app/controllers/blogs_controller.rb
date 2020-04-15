class BlogsController < ApplicationController
    before_action :set_blog, only: [:show, :edit, :update, :destroy]

    def index
      @blogs = Blog.all
    end
  
    def show
    end
  
    def new
      @blog = Blog.new
    end
  
    def edit
    end
  
    def create
      @blog = Blog.new(blog_params)
      @blog.user_id = current_user.id
  
      if @blog.save
        redirect_to @blog, notice: 'ブログを投稿しました'
      else
        render :new
      end
    end
  
    def update
      if @blog.update(blog_params)
        redirect_to @blog, notice: '投稿を編集しました.'
      else
        render :edit
      end
    end
  
    def destroy
      @blog.destroy
      redirect_to blogs_url, notice: '投稿を削除しました'
    end
  
    private
      def set_blog
        @blog = Blog.find(params[:id])
      end
  
      def blog_params
        params.require(:blog).permit(:content, :blog_image, :blog_image_cache, :user_id)
      end
end