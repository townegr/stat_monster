class Player < ActiveRecord::Base
  has_one :schedule
  has_many :statuses
  has_many :reports, through: :statuses, dependent: :destroy
  has_many :stats, as: :statable
  belongs_to :team
end
