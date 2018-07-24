class DropAttendEvent < ActiveRecord::Migration[5.2]
  def change
    drop_table :attend_events
  end
end
