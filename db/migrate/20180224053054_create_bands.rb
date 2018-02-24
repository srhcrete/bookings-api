class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :location
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
