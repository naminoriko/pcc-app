class Schedule < ApplicationRecord
  belongs_to :user
  has_many   :applicants

  validates :start_time, presence: true
  validates :place,      presence: true
  
end
