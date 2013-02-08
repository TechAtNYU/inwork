class Advertisement < ActiveRecord::Base
  attr_accessible :ad_target_url, :alt_text, :title, :image
  attr_accessible :image
  has_attached_file :image, :styles => { :regular => "500x140>" }

  def embed_string
    "<a href='#{ad_target_url}'><img alt='#{alt_text}' src='#{image.url(:regular)}'></a>"
  end
end
