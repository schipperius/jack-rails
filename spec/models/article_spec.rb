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

require 'spec_helper'

describe Article do
  pending "add some examples to (or delete) #{__FILE__}"
end
