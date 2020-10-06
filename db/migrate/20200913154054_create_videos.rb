class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :content
      t.string :url
      t.integer :views_count, default: 0

      t.timestamps
    end
  end
end
