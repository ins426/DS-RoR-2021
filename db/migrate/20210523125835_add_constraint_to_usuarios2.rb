class AddConstraintToUsuarios2 < ActiveRecord::Migration[6.1]
  def change
	add_index :usuarios, :username, unique: true
  end
end
