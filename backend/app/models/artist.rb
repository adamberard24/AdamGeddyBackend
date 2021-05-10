class Artist < ActiveRecord::Base
has_many :concerts
has_many :followers
has_many :attending_concerts, through: :concerts #you'll be able to access fans
has_many :fans, through: :followers
end
