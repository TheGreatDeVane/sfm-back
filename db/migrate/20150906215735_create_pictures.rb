class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :gallery_id
      t.text :caption

      t.timestamps null: false
    end
  end
end
