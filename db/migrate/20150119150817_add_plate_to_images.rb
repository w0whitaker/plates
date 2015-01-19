class AddPlateToImages < ActiveRecord::Migration
  def change
    add_column :images, :plate, :string
  end
end
