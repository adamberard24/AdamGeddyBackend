class Fan < ActiveRecord::Base
  has_many :attending_concerts
  has_many :followers
  has_many :concerts, through: :attending_concerts #you'll be able access artists here
  has_many :artists, through: :followers
    


  # 1. which artist is this fan following? 
    def artist_following 
        self.artists.each do |artist| 
        "#{self.name} is following #{artist.name}" 
        end
    end 

  # 2. How many upcoming concerts this plan is scheduled to attend? 
      def upcoming_concerts 
        self.attending_concerts.count
      end
  # 2. What concerts is this fan going to? 
    def concerts 
        self.concerts.each do |concert|
        puts "#{self.name} is attending #{concert.venue} on #{concert.day}"
        end
    end 
    

  # 3. How many artist is this fan following? 
    def following 
      self.followers.count 
    end 
  # 4. Where is this fan from? 
  # def location 
  #   self.location
  # end
  # # # 5. What is the name of this fan? 
  #   def name 
  #     self.name 
  #   end
  # 6. What is the age of this fan?
    # def age 
    #   self.age
    # end

  end 
