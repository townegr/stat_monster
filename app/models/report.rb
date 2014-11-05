class Report < ActiveRecord::Base
  has_many :statuses
  has_many :players, through: :statuses
end
