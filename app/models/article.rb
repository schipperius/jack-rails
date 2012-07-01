# == Schema Information
#
# Table name: articles
#
#  article_id   :integer
#  created_at   :datetime         not null
#  footnotes    :text
#  id           :integer          not null, primary key
#  intro        :text
#  position     :integer
#  published_at :datetime
#  sec1         :text
#  sec2         :text
#  sec3         :text
#  title        :string(255)
#  updated_at   :datetime         not null
#

class Article < ActiveRecord::Base
  attr_accessible :article_id, :footnotes, :intro, :position, 
  :published_at, :sec1, :sec2, :sec3, :title
 
end
