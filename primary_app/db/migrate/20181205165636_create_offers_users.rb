class CreateOffersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers_users do |t|
      t.references :offer, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
