class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
      @users = User.all
    end
  
    def show
    end
  
    def new
      @user = User.new
    end
  
    def edit
    end
  
    def create
      @user = User.new(user_params)
      @user.user_image = "face00.jpg"
      @user.pr = "自己紹介を書いてください"
      @user.address = "住所を書いてください"
        if @user.save
        redirect_to user_path(@user.id), notice: 'ユーザー登録が完了しました'
      else
        render :new
      end
    end
  
    def update
      if @user.update(user_params)
        redirect_to @user, notice: 'ユーザー情報を更新しました'
      else
        render :edit
      end
    end
  
    def destroy
      @user.destroy
      redirect_to users_url, notice: 'ユーザー登録を削除しました'
    end
  
    private
      def set_user
        @user = User.find(params[:id])
      end
  
      def user_params
        params.require(:user).permit(:name, :email, :password_digest, :pr, :address, :user_image, :password, :password_confirmation,
        :user_image, :user_image_cache)
      end
end
