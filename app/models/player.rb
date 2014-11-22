class Player < ActiveRecord::Base
  has_one :schedule
  has_many :statuses
  has_many :reports, through: :statuses, dependent: :destroy
  has_many :statistics, as: :statisticable
  belongs_to :team
end
