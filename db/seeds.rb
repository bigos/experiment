# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

notes = [{author: 'Me', content: 'Note for me'},
         {author: 'He', content: 'Note for Him'},
         {author: 'Them', content: 'Note for them'}]
notes.each{ |n| Note.create n }
