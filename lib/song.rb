class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            # ||= means the right side of the statement will only be executed if the left side is falsey
            genre_count[genre] ||= genre_count[genre] = 0
            genre_count[genre] += 1
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            # ||= means the right side of the statement will only be executed if the left side is falsey
            artist_count[artist] ||= artist_count[artist] = 0
            artist_count[artist] += 1
        end
        artist_count
    end
    
end