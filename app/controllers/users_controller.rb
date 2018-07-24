class UsersController < ApplicationController

  def new
     @user = User.new
  end

  def show
    @user = User.find_by(id:params[:id])

   @upcoming_events = User.upcoming_events @user 
   @previous_events = User.previous_events @user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
private

def user_params
  params.require(:user).permit(:name,:password, :password_confirmation)
end


end
