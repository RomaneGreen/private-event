class ApplicationController < ActionController::Base



  def log_in(user)
    cookies[:user_id] = user.id
  end
helper_method :log_in,:current_user,:log_out

def log_out(user)
  cookies.delete(:user_id)
  @current_user = nil
end

  def current_user
@current_user ||= User.find_by(id:cookies[:user_id])
  end
end
