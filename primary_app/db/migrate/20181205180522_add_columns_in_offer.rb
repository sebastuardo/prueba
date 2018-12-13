class AddColumnsInOffer < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :detail, :string
  end
end
