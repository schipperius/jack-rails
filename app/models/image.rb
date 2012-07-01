# == Schema Information
#
# Table name: images
#
#  caption            :text
#  cite               :text
#  created_at         :datetime         not null
#  footnote           :text
#  id                 :integer          not null, primary key
#  image_content_type :string(255)
#  image_file_name    :string(255)
#  image_file_size    :integer
#  image_id           :integer
#  image_updated_at   :datetime
#  lat                :decimal(, )
#  lng                :decimal(, )
#  title              :string(255)
#  updated_at         :datetime         not null
#

class Image < ActiveRecord::Base
  attr_accessible :caption, :cite, :footnote, :image_id, 
  :lat, :lng, :title, :title
end
