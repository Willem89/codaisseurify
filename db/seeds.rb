Artist.destroy_all
Song.destroy_all

artist1 = Artist.create(first_name: "Jeffrey", last_name:"Lebowski", genre:"country")
artist2 = Artist.create(first_name: "Forrest", last_name:"Gump", genre:"Ping Pong")
artist3 = Artist.create(first_name: "Jan", last_name:"van Trigt", genre:"Metal")



song1 = Song.create(title: "The dude abides", album: "Duderino", video_url: "https://www.youtube.com/watch?v=EsKoxi12jbI", artist:artist1)
song2 = Song.create(title: "Run Forrest Run", album: "Luitanent Dan", video_url: "https://www.youtube.com/watch?v=pyCGEHYvgsU", artist:artist2)
song3 = Song.create(title: "Damn Son", album: "Kijk uit voor de geit", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist1)
song4 = Song.create(title: "They wrecked my car", album: "Duderino", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist1)
song5 = Song.create(title: "That must be excausting", album: "Duderino", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist1)
song6 = Song.create(title: "What day is this?", album: "Duderino", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist1)
song7 = Song.create(title: "I know Donny", album: "Duderino", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist1)
song8 = Song.create(title: "Something bit me!", album: "Luitenant Dan", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist2)
song9 = Song.create(title: "Momma", album: "Luitenant Dan", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist2)
song10 = Song.create(title: "Janny", album: "Luitenant Dan", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist2)
song11 = Song.create(title: "Bubba", album: "Luitenant Dan", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist2)
song12 = Song.create(title: "Pabo", album: "Kijk uit voor de geit", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist3)
song13 = Song.create(title: "Feminisme", album: "Kijk uit voor de geit", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist3)
song14 = Song.create(title: "Anders", album: "Kijk uit voor de geit", video_url: "https://www.youtube.com/watch?v=BtlFkgJ91Eg", artist:artist3)
