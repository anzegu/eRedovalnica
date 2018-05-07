class UsersController < ApplicationController
    
    def status
        @users = User.all
    end
    
    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            redirect_to status_path
        end
    end
    
  def change
    @user = User.find(params[:id])
    @value = params[:vid]
    
    @user.status=@value

    if @user.save
        respond_to do |format|
          format.html      
          format.js
        end
    end    
  end    
end
