class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.references :engineer, foreign: true, null: false, index: true
      t.string :name, null: false
      t.text :description
      t.integer :level, null: false

      t.timestamps
    end
  end
end
