class WorkTime3 < ActiveHash::Base
  self.data = [
    { id: 1, name: "---" },
    { id: 2, name: "早番" },
    { id: 3, name: "日勤" },
    { id: 4, name: "遅番" },
    { id: 5, name: "終日" },
  ]

  include ActiveHash::Associations
  has_many :schedules

  end