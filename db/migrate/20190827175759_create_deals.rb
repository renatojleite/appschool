class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.references :offer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
