class SessionsController < ApplicationController
  def index

  end
  def create
    user = User.find_by(name: params[:sessions][:name])
  if user
    log_in user
    redirect_to user
  else
    render 'new'
  end
  end

  def destroy
  user = User.find_by(id:cookies[:user_id])
    current_user
    log_out user
    redirect_to :root
  end
end
