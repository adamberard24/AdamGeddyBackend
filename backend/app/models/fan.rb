class Fan < ActiveRecord::Base
  has_many :attending_concerts
  has_many :followers
  has_many :concerts, through: :attending_concerts #you'll be able access artists here
  has_many :artists, through: :followers
    end