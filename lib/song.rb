@@count = 0
class Song
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres=@@genres.uniq
    end

    def self.artists
        @@artists=@@artists.uniq
    end

    def self.genre_count
        hash_genre = {}
        @@genres.each do |genre|
            if hash_genre[genre]
                hash_genre[genre]+=1
            else
                hash_genre[genre]=1
            end
        end
        hash_genre
    end

    def self.artist_count
        hash_artist = {}
        @@artists.each do |artist|
            if hash_artist[artist]
                hash_artist[artist] += 1
            else
                hash_artist[artist] = 1
            end
        end
        hash_artist
    end
end
