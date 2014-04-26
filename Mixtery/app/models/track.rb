class Track < ActiveRecord::Base
  attr_accessible :name

  has_many :mock_tracks
end
