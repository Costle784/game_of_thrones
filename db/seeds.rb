# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

knights_watch = House.create(name:'Knights Watch', img_url:"http://img02.deviantart.net/9604/i/2012/139/f/4/nights_watch_crest_with_sword_by_liquidsouldesign-d50czid.jpg", motto: "Sword in the Darkness")

stark = House.create(name:'Stark', img_url:"https://s-media-cache-ak0.pinimg.com/736x/4a/bc/38/4abc38758eba60d6712bd86dd1542697.jpg", motto: "Winter is Coming")

targaryen = House.create(name:'Targaryen', img_url:"https://s-media-cache-ak0.pinimg.com/originals/c7/1b/90/c71b9004588c58c5541323ff14839cfb.png", motto: "Fire and Blood")

lannister = House.create(name:'Lannister', img_url:"http://awoiaf.westeros.org/images/4/4f/Blasonlancel.png", motto: "Hear Me Roar")

baratheon = House.create(name:'Baratheon', img_url:"http://awoiaf.westeros.org/images/thumb/2/2d/House_Baratheon.svg/1090px-House_Baratheon.svg.png", motto: "Sword in the Darkness")


john_snow = Character.create(name:"John Snow", title:"Bastard of Eddard Stark", img_url:"https://thoughtcatalog.files.wordpress.com/2016/04/jon-snow.jpg", weapon:"Dire Wolf", house: knights_watch)

samwell = Character.create(name:"Samwell Tarly", title:"Steward to the Master Aemon", img_url:"http://awoiaf.westeros.org/images/b/b2/Samwell_Tarly_HBO.jpg", weapon:"Dragon Glass", house: knights_watch)


eddard = Character.create(name:"Eddard Stark", title:"Lord of Winterfell", img_url:"https://upload.wikimedia.org/wikipedia/en/5/52/Ned_Stark-Sean_Bean.jpg", weapon:"Sword", house: stark)

catelyn = Character.create(name:"Catelyn Stark", title:nil, img_url:"https://static.comicvine.com/uploads/original/12/123851/2511370-520264_439156_catelyn_stark_large.jpg", weapon:nil, house: stark)


daenerys = Character.create(name:"Daenerys Targaryen", title: "Mother of Dragons", img_url:"http://winteriscoming.net/wp-content/uploads/2016/03/Daenerys-Targaryen-crop-630x371.jpg", weapon:"Dragons", house:targaryen)

khal_drogo = Character.create(name:"Khal Drogo", title:"The Great Rider", img_url:"https://typeset-beta.imgix.net/rehost%2F2016%2F9%2F14%2Feb52b269-15bc-40f5-a22a-405dca3c45fd.jpg", weapon:"Axe", house:targaryen)


# jamie = Character.create(name: "Jamie Lannister", title:"The Kingslayer", image:, weapon:"sword")
#
# tyrion = Character.create(name "Tyrion Lannister":, title:"The Imp", image:, weapon:nil)
#
# cersei = Character.create(name: "Cersei Lannister", title:"Queen", image:, weapon:"WildFire")
#
#
# stannis = Character.create(name:"Stannis Baratheon", title:"Lord of Dragonstone", image:, weapon:"sword")
#
# renly = Character.create(name:"Renly Baratheon", title:"Master of Laws", image:, weapon:"sword")
