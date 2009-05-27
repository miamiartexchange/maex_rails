class Gallery < ActiveRecord::Base
  validates_presence_of :name, :phone, :address, :city, :state, :zip, :owner, :description
end
