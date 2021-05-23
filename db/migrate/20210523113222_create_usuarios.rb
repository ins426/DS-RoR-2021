class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :username
      t.text :pass
      t.boolean :isAdmin

      t.timestamps
    end
  end
end
