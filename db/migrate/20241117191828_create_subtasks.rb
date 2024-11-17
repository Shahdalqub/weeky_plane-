class CreateSubtasks < ActiveRecord::Migration[7.2]
  def change
    create_table :subtasks do |t|
      t.string :title
      t.text :description
      t.references :task, null: false, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
