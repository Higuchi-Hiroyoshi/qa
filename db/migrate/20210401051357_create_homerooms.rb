class CreateHomerooms < ActiveRecord::Migration[6.0]
  def change
    create_table :homerooms do |t|
      t.references :student,      foreign_key: true
      t.references :comment,      foreign_key: true

      t.timestamps
    end
  end
end
