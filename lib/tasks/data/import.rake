namespace :data do
  desc 'Import data'
  task import: :environment do
    f_ingredients = Rails.root.join('db', 'data', 'ingredients.csv')
    f_formulations = Rails.root.join('db', 'data', 'formulations.csv')
    f_formulation_ingredients = Rails.root.join('db', 'data', 'formulation_ingredients.csv')

    Ingredient.first_or_create!(SmarterCSV.process(f_ingredients))
    Formulation.first_or_create!(SmarterCSV.process(f_formulations))
    FormulationIngredient.first_or_create!(SmarterCSV.process(f_formulation_ingredients))
  end
end