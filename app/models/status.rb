class Status < ActiveRecord::Base
  belongs_to :player
  belongs_to :report
end
