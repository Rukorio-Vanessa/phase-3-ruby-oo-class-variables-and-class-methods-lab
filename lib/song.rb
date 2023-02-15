class Song
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist=artist
        @genre = genre
        @@count +=1
        @@genres.push(genre)
        @@artists.push(artist)
    end

    @@count = 0
    def self.count
        @@count
    end

    @@genres = []
    def self.genres
        @@genres.uniq
    end

    @@artists = []
    def self.artists
        @@artists.uniq
    end
    
    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems.name
man_down = Song.new("man down", "Rihanna", "reggae")
umberella = Song.new("umberella", "Rihanna", "pop")
killing_time = Song.new("killing time", "Jordan Fiction", "Alt-rock")
captain_hook = Song.new("Captain hook", "Megan Thee Stallion", "rap")


#try out

puts Song.count
puts Song.artists
puts Song.genres
puts Song.genre_count
puts Song.artist_count





