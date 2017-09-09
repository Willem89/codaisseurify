Artist.destroy_all

artist1 = Artist.create!(first_name: "Jeffrey", last_name:"Lebowski", genre:"country")
artist2 = Artist.create!(first_name: "Forrest", last_name:"Gump", genre:"Ping Pong")
artist3 = Artist.create!(first_name: "Jan", last_name:"van Trigt", genre:"Metal")


song1 = Song.create(title: "The dude abides", album: "Duderino", video_url: "https://www.youtube.com/watch?v=EsKoxi12jbI", artist: artist1)
song2 = Song.create(title: "Run Forrest Run", album: "Luitanent Dan", video_url: "https://www.youtube.com/watch?v=pyCGEHYvgsU", artist: artist2)
song3 = Song.create(title: "Damn Son", album: "Kijk uit voor de geit", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist: artist3)
