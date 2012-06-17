class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :image_id
      t.string :title
      t.decimal :lat
      t.decimal :lng
      t.string :title
      t.text :caption
      t.text :cite
      t.text :footnote

      t.timestamps
    end
  end
end
