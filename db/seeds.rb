# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  Track.create(name: 'Javascript', description: 'Language which powers the web' )
  Track.create(name: 'Ruby', description: 'The most User Friendly language' )
  Track.create(name: 'Python', description: 'Jack of all Trades type of language' )
  TrackItem.create(topic: 'loops', item_type: 'study_material', track_id: 11 )
  TrackItem.create(topic: 'loops assignment', item_type: 'assignment', track_id: 11 )
  TrackItem.create(topic: 'Objects', item_type: 'study_material', track_id: 11 )
  TrackItem.create(topic: 'loops', item_type: 'assignment', track_id: 11 )
  TrackItem.create(topic: 'ES6', item_type: 'study_material', track_id: 11 )
  TrackItem.create(topic: 'Modules', item_type: 'study_material', track_id: 12 )
  TrackItem.create(topic: 'Modules Assigment', item_type: 'assignment', track_id: 12 )
  TrackItem.create(topic: 'procs and lamdas', item_type: 'study_material', track_id: 12 )
  TrackItem.create(topic: 'Memoization', item_type: 'study_material', track_id: 12 )
  TrackItem.create(topic: 'Arrays', item_type: 'study_material', track_id: 13 )
  TrackItem.create(topic: 'Arrays assignment', item_type: 'assignment', track_id: 13 )
  TrackItem.create(topic: 'Loops', item_type: 'study_material', track_id: 13 )
  TrackItem.create(topic: 'Strings', item_type: 'study_material', track_id: 13 )
