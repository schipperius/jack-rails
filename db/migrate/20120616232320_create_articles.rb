class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :article_id
      t.integer :position
      t.string :title
      t.text :intro
      t.text :sec1
      t.text :sec2
      t.text :sec3
      t.text :footnotes
      t.datetime :published_at

      t.timestamps
    end
  end
end
