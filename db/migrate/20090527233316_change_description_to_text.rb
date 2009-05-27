class ChangeDescriptionToText < ActiveRecord::Migration
  def self.up
    change_column :museums, :description, :text
  end

  def self.down
    change_column :museums, :description, :string
  end
end
