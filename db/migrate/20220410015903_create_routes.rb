class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.references :country, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.string :location
      t.string :zone
      t.string :name
      t.integer :grade
      t.date :date
      t.integer :category
      t.string :lead_climbing
      t.string :observation

      t.timestamps
    end
  end
end
