class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :student,      foreign_key: true
      t.text :comment,            null: false

      t.timestamps
    end
  end
end
