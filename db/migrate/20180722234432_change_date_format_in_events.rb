class ChangeDateFormatInEvents < ActiveRecord::Migration[5.2]
  def change
    def up
    change_column :events, :event_date, :datetime
  end

  def down
    change_column :events, :event_date, :date
  end
  end
end
