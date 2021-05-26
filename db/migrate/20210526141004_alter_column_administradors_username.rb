class AlterColumnAdministradorsUsername < ActiveRecord::Migration[6.1]
  def change
	add_index :administradors, :username, unique: true
  end
end
