class CreateHosts < ActiveRecord::Migration[5.1]
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :location
      t.text :description
      t.references :user, foreign_key: true
      t.decimal :price, precision: 5, scale: 2
      t.datetime :available_from
      t.datetime :available_to
      t.datetime :created_at
      t.datetime :updated_at
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
