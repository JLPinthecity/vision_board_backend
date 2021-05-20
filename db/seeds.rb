# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all
Item.destroy_all

travel = Category.create(name: "Travel")
career = Category.create(name: "Career")
selfcare = Category.create(name: "Self Care")
home = Category.create(name: "Home")


Item.create(title: "Cappadocia, Turkey", description: "Where the hot air balloons put on a show every morning", image_url: "https://s3.amazonaws.com/fathom_media/photos/Capadocia_fairy_chimneys.jpg.900x600_q85_crop.jpg",
                   url: "https://fathomaway.com/hot-air-balloon-cappadocia-turkey", category_id: travel.id) 

Item.create(title: "Google Internship", description: "Goal after finishing Flatiron School: Landing an awesome full-stack web dev internship and learning a bunch from talented software engineers", 
                   image_url: "https://lh3.googleusercontent.com/vJd-vMl6id5P5-UKpycd5Hc1e2Xkb0YLOpULW1XWvYytz9hgbY1OFfaPhLVhU6sWkC59lvQoXtvu9Tb509mGer_ywqK8kr_-6kbauCo=w650", url: "https://buildyourfuture.withgoogle.com/internships/", category_id: career.id)
                   
Item.create(title: "Build a capsule wardrobe", description: "Reduce your closet down to staple pieces.", 
                   image_url: "https://cache.net-a-porter.com/content/images/story-body-content-11thFebruary2021-0-1612788261928.jpeg/w600_q65.jpeg", url: "https://www.net-a-porter.com/en-us/porter/article-646cc92b8c1e8d6d/fashion/fashion-memo/capsule-wardrobe-2019", category_id: home.id) 

Item.create(title: "Relaxing Pilates Workouts", description: "The best at-home workouts.", 
                    image_url: "https://media.hearstapps.com/hmg-prod/images/gettyimages-1057839322.jpg?crop=2700,2667,x224,y0,safe&width=640&auto=webp&optimize=medium", 
                    url: "https://www.womenshealthmag.com/uk/fitness/workouts/a707014/best-pilates-youtube-workouts/", category_id: selfcare.id) 
 