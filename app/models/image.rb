class Image < ActiveRecord::Base
  attr_accessible :caption, :cite, :footnote, :image_id, :lat, :lng, :title, :title
end
