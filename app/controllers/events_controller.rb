class EventsController < ApplicationController

  def index
   @event = Event.all
  end

  def new
  @event = Event.new
  end

  def show
   @event = Event.find_by()
  end

  def create
     @user = User.find_by(id:cookies[:user_id])
  event = @user.events.build(event_params)
     if event.save
       redirect_to @user
     else
       render 'new'
     end
  end

  private

  def  event_params
    params.require(:event).permit(:event_date,:description)
  end
end
