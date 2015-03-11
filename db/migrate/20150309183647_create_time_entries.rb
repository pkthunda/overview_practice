class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.decimal :duration_worked, :precision => 6, :scale => 2
      t.integer :project_id
      t.integer :developer_id
      t.date :worked_on

      t.timestamps null: false
    end
  end
end
