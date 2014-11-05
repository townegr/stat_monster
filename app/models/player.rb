class Player < ActiveRecord::Base
  has_many :rosters
  has_many :seasons, through: :rosters, dependent: :destroy
  has_many :statistics, through: :rosters, dependent: :destroy
  has_many :statuses
  has_many :reports, through: :statuses, dependent: :destroy
end
