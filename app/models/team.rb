class Team < ActiveRecord::Base
  has_many :players
  has_many :stats, as: :statable
  has_one :schedule
end
