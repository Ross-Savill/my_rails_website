class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :organisation
      t.string :role
      t.string :years
      t.text :tasks

      t.timestamps
    end
  end
end
