class CreateFlowers < ActiveRecord::Migration
  def self.up
    create_table :flowers do |t|
      t.string :latin_name
      t.string :common_name

      t.timestamps
    end
  end

  def self.down
    drop_table :flowers
  end
end
