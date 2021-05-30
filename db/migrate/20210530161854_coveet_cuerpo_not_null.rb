class CoveetCuerpoNotNull < ActiveRecord::Migration[6.1]
  def change
	change_column :coveets, :cuerpo, :text, null:false
  end
end
