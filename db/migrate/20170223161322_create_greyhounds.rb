class CreateGreyhounds < ActiveRecord::Migration[5.0]
  def change
    create_table :greyhounds do |t|
      t.string :name
      t.text :description
      t.string :photo_uri

      t.timestamps
    end
  end
end
