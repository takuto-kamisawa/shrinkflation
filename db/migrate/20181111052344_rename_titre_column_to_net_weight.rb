class RenameTitreColumnToNetWeight < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :NET_weight, :net_weight
  end
end
