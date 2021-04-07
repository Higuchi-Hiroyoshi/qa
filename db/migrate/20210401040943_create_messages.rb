class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :student,      foreign_key: true
      t.references :teacher,      foreign_key: true
      t.text :message,            null: false

      t.timestamps
    end
  end
end
