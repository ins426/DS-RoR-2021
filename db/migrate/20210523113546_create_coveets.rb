class CreateCoveets < ActiveRecord::Migration[6.1]
  def change
    create_table :coveets do |t|
      t.text :cuerpo
      t.integer :likes
      t.belongs_to :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
