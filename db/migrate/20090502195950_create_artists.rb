class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.text :bio
      t.string :city
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :artists
  end
end
