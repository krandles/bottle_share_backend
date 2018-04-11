class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.string :style
      t.string :img_url
      t.string :description
      t.references :brewery, foreign_key: true

      t.timestamps
    end
  end
end
