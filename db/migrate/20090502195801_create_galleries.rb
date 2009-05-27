class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.string :name
      t.string :owner
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
