class CreateSneakers < ActiveRecord::Migration[5.2]
  def change
    create_table :sneakers do |t|
      t.string :title
      t.string :style
      t.integer :brand_id
      t.timestamps
    end
  end
end
