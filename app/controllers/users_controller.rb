class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]

    def index
        @users = User.all.includes(:trackers)
      
      render json: {
        data: ActiveModelSerializers::SerializableResource.new(users, each_serializer: UserSerializer),
        message: ['Users fetched successfully'],
        status: 200,
        type: 'Success'
      }
        # @users = User.all
        # render json: @users
    end

    def show
        @user = User.find(params[:id])
      
        render json: {
            data: ActiveModelSerializers::SerializableResource.new(users, each_serializer: UserSerializer),
            message: ['User fetched successfully'],
            status: 200,
            type: 'Success'
        }
        # render json: @user
    end

    def create
        @user = User.new(user_params)
    
        if @user.save
          render json: @user
        else
          render json: { errors: @user.errors }
        end
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

    # def find_user
    #     @user = User.find(params[:id])
    # end
end
