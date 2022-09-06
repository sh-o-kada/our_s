class Schedule < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :work_time_1
  belongs_to :work_time_2
  belongs_to :work_time_3

  validates :user_id,           presence: true
  validates :work_time_1_id, presence: true
  validates :start_time,     presence: true

  validates :work_time_1_id, numericality: { other_than: 1, message: "勤務可能な時間帯を選択してください"}
end