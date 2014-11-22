class Schedule < ActiveRecord::Base
  has_many :weeks
  belongs_to :player
  belongs_to :team
end
