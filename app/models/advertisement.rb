class Advertisement < ActiveRecord::Base
  attr_accessible :ad_target_url, :alt_text, :title, :image
  attr_accessible :image
  has_attached_file :image, :styles => { :regular => "500x140>" }
end
