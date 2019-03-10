class AddDetailToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :detail, :string
    
  end
end
