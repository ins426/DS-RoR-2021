class AddConstraintToUsuarios < ActiveRecord::Migration[6.1]
  def change
	change_column :usuarios, :username, :string, :unique => true
  end
end
