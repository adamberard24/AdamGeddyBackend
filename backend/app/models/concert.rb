class Concert < ActiveRecord::Base
    has_many :attending_concerts
    belongs_to :artist
    has_many :fans, through: :attending_concerts


# 1. How many concerts are planned? 
    def number_of_concerts 
        self.all.count 
    end 
# 2.  how many artist are having concerts? 
    def artist_having_concerts 
        self.artist.count 
    end

# 3. How many fans are going to concerts? 
    def num_of_fans_attending
        self.fans.count
    end 

# 4. What artist are having concerts? 
    def names_of_artist
        self.artist.each do |artist|
           puts "#{artist.name} is performing at a concert soon!"
        end 
    end 
end

