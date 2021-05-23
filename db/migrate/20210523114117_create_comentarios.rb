class CreateComentarios < ActiveRecord::Migration[6.1]
  def change
    create_table :comentarios do |t|
      t.text :cuerpo
      t.belongs_to :usuario, null: false, foreign_key: true
      t.belongs_to :coveet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
