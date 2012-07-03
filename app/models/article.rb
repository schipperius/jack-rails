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
  attr_accessible :article_id, :position, :title, :intro, 
   :sec1, :sec2, :sec3, :footnotes, :published_at

  # Named Scopes
  scope :published, lambda { where("published_at <= ?", Time.zone.now) }
  scope :recent, order('position DESC')

  def long_title
   "#{title} - #{published_at}"
  end

  def previous
   self.class.where("position < ?", position).order("position desc").first
  end

  def next
   self.class.where("position > ?", position).order("position").first
  end

  def last_published?
   self == self.class.published.last
  end

  def published?
   published_at <= Time.zone.now
  end

end
