class AddCategoryToOffer < ActiveRecord::Migration[5.2]
  def change
    add_reference :offers, :category, foreign_key: true
  end
end
