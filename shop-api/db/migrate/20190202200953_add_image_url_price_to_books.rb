class AddImageUrlPriceToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :image_url, :string
    add_column :books, :price, :decimal, precision: 5, scale: 2
  end
end
