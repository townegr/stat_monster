class Season < ActiveRecord::Base
  has_many :rosters
  has_many :players, through: :rosters, dependent: :destroy
  has_many :statistics, through: :rosters, dependent: :destroy
end
