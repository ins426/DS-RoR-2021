class AddDefaultLikesCoveet2 < ActiveRecord::Migration[6.1]
  def change
	change_column :coveets, :likes, :int, :default => 0
  end
end
