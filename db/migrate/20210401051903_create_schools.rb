class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.references :student,      foreign_key: true
      t.references :teacher,      foreign_key: true
      t.references :messages,      foreign_key: true

      t.timestamps
    end
  end
end
