class RemoveIsAdminFromUsuarios < ActiveRecord::Migration[6.1]
  def change
	remove_column :usuarios, :isAdmin
  end
end
