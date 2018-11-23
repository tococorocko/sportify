# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create!({
  first_name: "Daniel",
  last_name: "Trujilo",
  email: "dtrujilo69@gmail.com",
  password: "dtrujilo69@gmail.com"
})

User.create!({
  first_name: "Amelie",
  last_name: "Boudier",
  email: "amelie.boudier01@gmail.com",
  password: "amelie.boudier01@gmail.com"
})

User.create!({
  first_name: "Mario",
  last_name: "Hilsenrath",
  email: "mario.hilsenrath@gmail.com",
  password: "mario.hilsenrath@gmail.com"
})

User.create!({
  first_name: "Lucca",
  last_name: "Kaiser",
  email: "lucca.kaiser@gmail.com",
  password: "lucca.kaiser@gmail.com"
})

User.create!({
  first_name: "Rich",
  last_name: "OGrady",
  email: "rich.o.g@gmail.com",
  password: "rich.o.g@gmail.com"
})

field_1= Field.new({
  name: "Blito sport center",
  description: "Natural grass field with barbacue and freezer. Have an amazing day and play footbal with friends.",
  street: "Am Köllnischen Park 5",
  city: "Berlin",
  category: "basketball",
  price_per_hour: "15",
  opening_hours: "06:00",
  user_id: "2"
})
field_1.remote_picture_url = "https://arlingtonva.s3.amazonaws.com/wp-content/uploads/sites/17/2014/08/towers-park.jpg"
field_1.save

field_2= Field.new({
  name: "Kaiser Club",
  description: "The true swiss natural grass field with the pure air from alps.",
  street: "Grünberger Str. 75",
  city: "Berlin",
  category: "football",
  price_per_hour: "35",
  opening_hours: "10:00",
  user_id: "4"
})
field_2.remote_picture_url = "https://i.dailymail.co.uk/i/pix/2013/09/04/article-2411492-1B9E7CBB000005DC-698_634x430.jpg"
field_2.save

field_3= Field.new({
  name: "Tricolor sport",
  description: "Amazing volleyball square, play with your friends and family!",
  street: "Bodestraße 1-3",
  city: "Berlin",
  category: "volleyball",
  price_per_hour: "25",
  opening_hours: "12:00",
  user_id: "1"
})
field_3.remote_picture_url = "https://www.centralpark.com/downloads/5594/download/volleyball.jpg?cb=c371453907622627fcd464b9d54294e3&w=640"
field_3.save


field_4= Field.new({
  name: "Borg tennis club",
  description: "Play tennis like a champion in this amazing square. The true wimbledon grass with the best gardners.",
  street: "Church Rd, Wimbledon",
  city: "London",
  category: "tennis",
  price_per_hour: "80",
  opening_hours: "06:00",
  user_id: "2"
})
field_4.remote_picture_url = "http://aspensnowmasssir.com/remote.jpg.ashx?width=1600&height=900&urlb64=aHR0cDovL2Nkbi5yZXNpemUuc3BhcmtwbGF0Zm9ybS5jb20vYWdzLzEwMjR4NzY4L3RydWUvMjAxNjA4MTcyMzU5NTYxNzAzNjkwMDAwMDAtby5qcGc&hmac=PNUXkIV1WXQ"
field_4.save

field_5= Field.new({
  name: "MJ battle field",
  description: "Basketball is life, come and refresh your life!!!",
  street: "33 The Cut, South Bank",
  city: "London",
  category: "basketball",
  price_per_hour: "100",
  opening_hours: "09:00",
  user_id: "3"
})
field_5.remote_picture_url = "https://imgs.6sqft.com/wp-content/uploads/2018/01/09170824/MLK-JR-Park-nyc-parks.jpg"
field_5.save

field_6= Field.new({
  name: "China ping pong club",
  description: "Come and challange the best ping UK pong player. I will kick you ass.",
  street: "45 Great Marlborough St, Soho",
  city: "London",
  category: "ping pong",
  price_per_hour: "10",
  opening_hours: "24 hours",
  user_id: "5"
})
field_6.remote_picture_url = "https://clubrunner.blob.core.windows.net/00000000608/Images/ping-pong-table.jpeg"
field_6.save



field_7= Field.new({
  name: "Neverland square",
  description: "Squash is a fast-moving game that requires skill, speed and supreme fitness.",
  street: "107 Rue de Rivoli",
  city: "Paris",
  category: "squash",
  price_per_hour: "15",
  opening_hours: "08:00",
  user_id: "1"
})
field_7.remote_picture_url = "https://squashskills.com/images/sized/640x360/2b022114-qx90.jpg"
field_7.save

field_8= Field.new({
  name: "Bala bark",
  description: "Most accounts place the sport's origin in Santa Monica, California, where the first Volleyball courts were put up on the beach at the Playground (Santa Monica).",
  street: "16 Rue du Repos",
  city: "Paris",
  category: "volleyball",
  price_per_hour: "75",
  opening_hours: "10:00",
  user_id: "2"
})
field_8.remote_picture_url = "http://www.residencedomaso.com/en/wp-content/uploads/2017/07/beach-volley-lago-di-como-600x400.jpg"
field_8.save

field_9= Field.new({
  name: "The Rubber Duck",
  description: "The Rubber Duck at Downers Grove Golf Club offers a park-like setting and a scenic panorama for social gatherings, group meetings or corporate functions. The Clubhouse includes use of the main and south rooms and can accommodate up to 60 people. The South room is perfect for small meetings and can accommodate up to 25 people.",
  street: "Rond-Point du Bleuet de France",
  city: "Paris",
  category: "badminton",
  price_per_hour: "100",
  opening_hours: "07:00",
  user_id: "3"
})
field_9.remote_picture_url = "http://www.theseoulstop.com/badminton/pictures/seoul-forest-park/badminton-7.jpg"
field_9.save

field_10= Field.new({
  name: "Ronaldo Soccer School",
  description: "Natural grass field with barbacue and freezer. Have an amazing day and play footbal with friends.",
  street: "8 Anzengruberstraße",
  city: "Berlin",
  category: "football",
  price_per_hour: "50",
  opening_hours: "08:00",
  user_id: "1"
})
field_10.remote_picture_url = "https://i.dailymail.co.uk/i/pix/2013/09/04/article-0-1B9E7CD8000005DC-351_634x425.jpg"
field_10.save


field_11= Field.new({
  name: "Millionarios football team",
  description: "Play the true latin america footbal. Every gol we shoot fire guns!",
  street: "Breite Str 45",
  city: "Berlin",
  category: "football",
  price_per_hour: "25",
  opening_hours: "12:00",
  user_id: "1"
})
field_11.remote_picture_url = "https://i.dailymail.co.uk/i/pix/2013/09/04/article-0-1B9E7CB3000005DC-521_634x430.jpg"
field_11.save

field_12= Field.new({
  name: "RF german way",
  description: "Tennis is good. Come and play!",
  street: "Mehringdamm 32",
  city: "Berlin",
  category: "tennis",
  price_per_hour: "25",
  opening_hours: "12:00",
  user_id: "2"
})
field_12.remote_picture_url = "https://tennissquare.gr/wp-content/uploads/2017/03/SAM_3334.jpg"
field_12.save


Booking.create!({
  start_date: "Mon, 27 Nov 2018 14:00:00",
  end_date: "Mon, 27 Nov 2018 16:00:0",
  field_id: "1",
  user_id: "1"
})

Booking.create!({
  start_date: "Mon, 28 Nov 2018 14:00:00",
  end_date: "Mon, 28 Nov 2018 16:00:0",
  field_id: "12",
  user_id: "4"
})

Booking.create!({
  start_date: "Mon, 26 Nov 2018 14:00:00",
  end_date: "Mon, 26 Nov 2018 16:00:0",
  field_id: "11",
  user_id: "2"
})



