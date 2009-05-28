class Artist < ActiveRecord::Base

  has_attached_file :photo
  #has_attached_file :photo, :styles => { :small => "150x150>" }
end
