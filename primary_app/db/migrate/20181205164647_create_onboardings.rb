class CreateOnboardings < ActiveRecord::Migration[5.2]
  def change
    create_table :onboardings do |t|
      t.string :name
      t.string :description
      t.string :datail
      t.references :offers, foreign_key: true

      t.timestamps
    end
  end
end
