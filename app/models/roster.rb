class Roster < ActiveRecord::Base
  belongs_to :player
  belongs_to :season
  belongs_to :statistic
end
