class Team < ActiveRecord::Base
  has_many :players
  has_many :statistics, as: :statisticable
  has_one :schedule
end
