class AddPriceToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :price, :integer
  end
end
