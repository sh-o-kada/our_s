class CreateWorkTime2s < ActiveRecord::Migration[6.0]
  def change
    create_table :work_time_2s do |t|

      t.timestamps
    end
  end
end
