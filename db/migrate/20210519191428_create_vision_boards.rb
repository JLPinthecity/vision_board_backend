class CreateVisionBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :vision_boards do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :url
      t.integer :category_id

      t.timestamps
    end
  end
end
