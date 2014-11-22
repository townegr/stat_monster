class Week < ActiveRecord::Base
  has_many :games
  has_many :stats
  belongs_to :schedule
end
