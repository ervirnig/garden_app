class CreateBeds < ActiveRecord::Migration
  def self.up
    create_table :beds do |t|
      t.string :soil_type
      t.integer :sqft

      t.timestamps
    end
  end

  def self.down
    drop_table :beds
  end
end
