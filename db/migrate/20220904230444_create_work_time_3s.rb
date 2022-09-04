class CreateWorkTime3s < ActiveRecord::Migration[6.0]
  def change
    create_table :work_time_3s do |t|

      t.timestamps
    end
  end
end
