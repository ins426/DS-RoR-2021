class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.belongs_to :usuario, null: false, foreign_key: true
      t.belongs_to :coveet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
