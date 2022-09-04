class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string    :name,         null: false
      t.integer   :work_time_id, null: false
      t.datetime :start_time,   null: false
      t.timestamps
    end
  end
end
