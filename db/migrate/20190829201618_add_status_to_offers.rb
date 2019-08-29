class AddStatusToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :status, :integer
  end
end
