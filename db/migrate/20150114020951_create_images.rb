class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.text :date
      t.text :dims
      t.text :medium

      t.timestamps null: false
    end
  end
end
