class Concert < ActiveRecord::Base
    has_many :attending_concerts
    belongs_to :artist
    has_many :fans, through: :attending_concerts
end