class CreateMuseums < ActiveRecord::Migration
  def self.up
    create_table :museums do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :county
      t.string :state
      t.string :zip
      t.string :phone
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :museums
  end
end
