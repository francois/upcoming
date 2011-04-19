class CreateAttendees < ActiveRecord::Migration
  def self.up
    create_table :attendees do |t|
      t.belongs_to :person
      t.belongs_to :event

      t.timestamps
    end
  end

  def self.down
    drop_table :attendees
  end
end
