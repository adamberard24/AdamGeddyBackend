class Follower < ActiveRecord::Base
    belongs_to :fan
    belongs_to :artist
      end