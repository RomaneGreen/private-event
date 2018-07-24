class Event < ApplicationRecord
  belongs_to :user
  belongs_to :creator, :class_name => 'User', :foreign_key => 'user_id'
  has_many :organizers
    has_many :attendees,:through => :organizers,:source => :user

scope :upcoming_events, ->{ where("event_date > ?", Time.now)  }
scope :previous_events, ->{ where("event_date > ?", Time.now)  }

#class methods into scopes!!!
    # def self.upcoming_events
    #   Event.all.where("event_date > ?", Time.now)
    # end

    # def self.previous_events
    #   Event.all.where("event_date < ?", Time.now)
    # end


end
