class AddColor < ActiveRecord::Migration[5.2]
  def change
    add_column :sneakers, :color, :string
  end
end
