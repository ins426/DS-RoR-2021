class AddDefaultLikesCoveet < ActiveRecord::Migration[6.1]
  def change
	change_column_default :coveets, :likes, :default => 0
  end
end
