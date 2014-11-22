class Stat < ActiveRecord::Base
  belongs_to :statable, polymorphic: true
  belongs_to :week
end
