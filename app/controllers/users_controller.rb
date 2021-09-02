class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]
    def index
        @users = User.all
        render json: @users
    end

    def show
        render json: @user
    end

    def create
        @user = User.create!(user_params)
        json_response(@user, :created)
    end
    
    def update
        @user.update(user_params)
        head :no_content
    end
    
    def destroy
        @user.destroy
        head :no_content
    end

    private
    def user_params
        params.permit(:username)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
