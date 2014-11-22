class Statistic < ActiveRecord::Base
  belongs_to :statisticable, polymorphic: true
  belongs_to :week
end
