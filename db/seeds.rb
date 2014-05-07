# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

thatsongtho = Project.create!(url: "http://www.thatsongtho.net", 
														 name: "That Song Tho", 
														 description: "I built this site with Ruby on Rails and Zurb Foundation. It uses API's by Rdio, Echonest, and Twitter to help users find new favorite songs." )
twee_d = Project.create!(url: "http://twee-d.herokuapp.com",
												name: "Twee-D",
												description: "I created this site in Node.js / Express, and used Twitter's Streaming API to feed in a constant stream of real-time data.")

ss_1 = thatsongtho.screenshots.create!(filename: "tst.jpg")
ss_2 = thatsongtho.screenshots.create!(filename: "tst-mobile.jpg")

ss_3 = twee_d.screenshots.create!(filename: "twitter-bb-1348.jpg")
ss_4 = twee_d.screenshots.create!(filename: "tweet-fm.jpg")