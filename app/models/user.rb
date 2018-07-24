class User < ApplicationRecord
  has_secure_password
   has_many :events
    has_many :organizers
    has_many :attended_events,:through => :organizers,:source => :event




    def self.upcoming_events user
      user.events.where("event_date > ?", Time.now)
    end

    def self.previous_events user
      user.events.where("event_date < ?", Time.now)
    end
end
