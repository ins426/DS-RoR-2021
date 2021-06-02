class AddEmailToAdministradors < ActiveRecord::Migration[6.1]
  def change
	add_column :administradors, :email, :string
  end
end
