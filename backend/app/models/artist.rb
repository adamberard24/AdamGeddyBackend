class Artist < ActiveRecord::Base
has_many :concerts
has_many :followers
has_many :attending_concerts, through: :concerts #you'll be able to access fans
has_many :fans, through: :followers  


#What is our app going to need from the Artist Class? 

# 1. How many fans an artist has ? self can be Artist.first
        def fan_names_of_artist 
            self.fans.each do |fanOfTheArtist| #returns an array of fans for the artist 
                 puts "#{fanOfTheArtist.name} is a fan of #{self.name} "
            end 
        end 
    
# 2. How many followers does an artist have? 
        def number_of_followers
            self.followers.count
          "#{self.name} has #{self.followers.count} followers" 
        end
    


# 3. How many concerts does an artist have?
        def number_of_concerts 
            self.concerts.count
        puts "#{self.name} has #{self.concerts.count} upcoming concerts"
        end 
    
# 4. How many fans are attending an artist for a concert 
        def fans_attending_concert  #fix this
            self.fans do |eachfan|
                AttendingConcerts.find_by(fan_id: eachfan.id) 
        end 
    end
end
# 5. How many fans are over 18 for a concert? 

# 6. How many fans are over 21 for a concert? 
# 7. 