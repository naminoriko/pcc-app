class Schedule < ApplicationRecord
  belongs_to :user
  has_many   :applicants
end
