class Article < ActiveRecord::Base
  attr_accessible :article_id, :footnotes, :intro, :position, 
  :published_at, :sec1, :sec2, :sec3, :title
 
end
