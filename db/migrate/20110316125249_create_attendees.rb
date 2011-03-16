class CreateAttendees < ActiveRecord::Migration
  def self.up
    create_table :attendees do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.datetime :last_seen_at, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :attendees
  end
end
