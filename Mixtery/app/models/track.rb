class Track < ActiveRecord::Base
  attr_accessible :name

  has_many :mock_tracks
  belongs_to :artist
  belongs_to :genre
end
