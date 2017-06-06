class CreateToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :to_dos do |t|
      t.string :task
      t.string :time

      t.timestamps

    end
  end
end
