class RenameIngredientAmountToDescriptionInDoses < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :ingredient_amount, :description
  end
end
