class CreateResidents < ActiveRecord::Migration
  def self.up
    create_table :residents do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :residents
  end
end
