class CreateFormulationIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :formulation_ingredients do |t|
      t.belongs_to :formulation, null: false
      t.belongs_to :ingredient, null: false
      t.decimal :percentage, null: false
      t.timestamps
    end
  end
end