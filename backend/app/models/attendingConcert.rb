class AttendingConcerts < ActiveRecord::Base
    belongs_to :fan
    belongs_to :concert
end