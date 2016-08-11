class CreateCritters < ActiveRecord::Migration
  def change
    create_table :critters do |t|
      t.string :name
      t.integer :age
      t.date :date_last_seen
      t.string :color
      t.boolean :has_collar, default: false

      t.timestamps null: false
    end
  end
end
