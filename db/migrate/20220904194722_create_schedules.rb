class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string    :name,           null: false
      t.integer   :work_time_1_id, null: false
      t.integer   :work_time_2_id
      t.integer   :work_time_3_id
      t.datetime  :start_time,     null: false
      t.timestamps
    end
  end
end
