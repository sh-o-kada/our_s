class Schedule < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :work_time_1
  belongs_to :work_time_2
  belongs_to :work_time_3
end