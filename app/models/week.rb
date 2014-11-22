class Week < ActiveRecord::Base
  has_many :games
  has_many :statistics
  belongs_to :schedule
end
