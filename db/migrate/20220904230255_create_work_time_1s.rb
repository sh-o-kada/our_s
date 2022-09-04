class CreateWorkTime1s < ActiveRecord::Migration[6.0]
  def change
    create_table :work_time_1s do |t|

      t.timestamps
    end
  end
end
