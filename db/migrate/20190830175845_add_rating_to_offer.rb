class AddRatingToOffer < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :rating, :integer
  end
end
