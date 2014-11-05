class Statistic < ActiveRecord::Base
  has_many :rosters
  has_many :seasons, through: :rosters
  has_many :players, through: :rosters
end
