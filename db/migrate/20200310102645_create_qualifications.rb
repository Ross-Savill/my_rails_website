class CreateQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :qualifications do |t|
      t.string :topic
      t.string :level
      t.string :grade

      t.timestamps
    end
  end
end
