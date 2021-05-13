class AttendingConcerts < ActiveRecord::Base
    belongs_to :fan
    belongs_to :concert


# 1. What concerts are fans going to ? 
    def name_of_concert 
        self.concert.each do |concert|
            puts " People are attending #{concert.name} on #{concert.day}"
        end
    end

end
# 3. Number of fans attending this concert 
    # def fans_attending_specific_concert 
