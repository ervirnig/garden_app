class CreateFlowerTwos < ActiveRecord::Migration
  def self.up
    create_table :flower_twos do |t|
      t.string :latin_name
      t.string :common_name
      t.integer :bed_id

      t.timestamps
    end
  end

  def self.down
    drop_table :flower_twos
  end
end
