class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :location
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :description
      t.boolean :private
      t.references :organizer, references: :users

      t.timestamps
    end
  end
end
