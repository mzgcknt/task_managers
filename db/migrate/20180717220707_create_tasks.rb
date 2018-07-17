class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :period
      t.integer :status
      t.string :task
      t.string :explanation
      t.string :priority
      t.string :label

      t.timestamps
    end
  end
end
