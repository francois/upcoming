class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.belongs_to :event,    :null => false
      t.belongs_to :attendee, :null => false

      t.timestamps
    end

    add_index :registrations, [:event_id, :attendee_id], :unique => true
  end

  def self.down
    drop_table :registrations
  end
end
