# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist = Artist.create( :name => 'Taylor Swift' )
genre = Genre.create( :name => 'Pop')
track = Track.create( :name => 'example_song' )
track.artist = artist
track.save
track.genre = genre
track.save
track.mock_tracks << MockTrack.create( name: '22')
track.mock_tracks << MockTrack.create( name: 'Circle of Life')
track.mock_tracks << MockTrack.create( name: 'Wrecking Ball')

artist = Artist.create( :name => 'Bon Jovi' )
genre = Genre.create( :name => 'Rock')
track = Track.create( :name => 'example_two' )
track.artist = artist
track.save
track.genre = genre
track.save
track.mock_tracks << MockTrack.create( name: 'Piano Man')
track.mock_tracks << MockTrack.create( name: 'Bohemian Rhapsody')
track.mock_tracks << MockTrack.create( name: 'Levels')


