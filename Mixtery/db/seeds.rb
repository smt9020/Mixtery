# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

i = 0
track = nil
File.open('songChoices.txt').each do |line|
	if (line != ":::")
		if (i == 0)
			song = line.split(",")
			title = song[0]
			singer = song[1].gsub("\n",'')
			artist = Artist.create( :name => "#{singer}" )
			genre = Genre.create( :name => 'Pop')
			track = Track.create( :name => "#{title}" )
			track.artist = artist
			track.save
			track.genre = genre
			track.save
			print track.name
		else
			song = line.split(",")
			title = song[0]
			track.mock_tracks << MockTrack.create( name: "#{title}")
		end
		i = i + 1
	else
		i = 0
	end
end