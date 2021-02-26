class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :nombre
      t.string :precio

      t.timestamps
    end
  end
end
