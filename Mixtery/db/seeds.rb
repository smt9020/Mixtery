# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create( name: 'Taylor Swift' )
Genre.create( name: 'Pop')
Track.create( name: 'example_song', artist_id: 1, genre_id: 1 )
MockTrack.create( name: '22', track_id: 1)
MockTrack.create( name: 'Circle of Life', track_id: 1)
MockTrack.create( name: 'Wrecking Ball', track_id: 1)

Artist.create( name: 'Bon Jovi' )
Genre.create( name: 'Rock')
Track.create( name: 'example_two', artist_id: 2, genre_id: 2 )
MockTrack.create( name: 'Piano Man', track_id: 2)
MockTrack.create( name: 'Bohemian Rhapsody', track_id: 2)
MockTrack.create( name: 'Levels', track_id: 2)


