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
        @@genres<< genre
        @@artists<< artist
    end
    
    def self.genre_count
        genrefull = {}
        @@genres.each do |genre|
            if genrefull[genre]
                genrefull[genre] += 1;
            else genrefull[genre] = 1
            end
        end
        return genrefull
    end
    def self.artist_count
        artistfull = {}
        @@artists.each do |artist|
            if artistfull[artist]
                artistfull[artist] += 1;
            else artistfull[artist] = 1
            end
        end
        return artistfull
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    

end