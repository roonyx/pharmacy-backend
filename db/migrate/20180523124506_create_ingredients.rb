class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false, index: { unique: true }
      t.decimal :minimum_percentage, null: false
      t.decimal :maximum_percentage, null: false
      t.text :description
      t.string :classes
      t.timestamps
    end
  end
end
