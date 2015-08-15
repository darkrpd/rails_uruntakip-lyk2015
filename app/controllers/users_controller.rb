class UsersController < ApplicationController

    def index
      @users = User.all

    end

        def new

        end


        def create
          user_params= params.require(:user).permit(:username, :email,:age,:city)
           @user = User.new(user_params)
           @user.save
       redirect_to @user
        end

        def show
           @user = User.find(params[:id])
        end

        def edit
          @user = User.find(params[:id])
        end


        def update
          @user = User.find(params[:id])
          user_params= params.require(:user).permit(:username,:email,:age,:city)

          if @user.update(user_params)
          redirect_to @user
          else
          render 'edit'
          end
        end

        def destroy
             @user = User.find(params[:id])
             @user.destroy

             redirect_to @user
        end

        def delete
          @user = User.find(params[:id])
        end



end
