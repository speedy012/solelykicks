class RemoveBrandImg < ActiveRecord::Migration[5.2]
  def change
    remove_column :brands, :brand_img
  end
end
