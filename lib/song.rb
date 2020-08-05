class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)

        self.name = name
        self.artist = artist
        self.genre = genre
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
        res = {}
        @@genres.each do |gen|
            if res[gen] 
                res[gen] += 1
            else
                res[gen] = 1
            end
        end
        res
    end

    def self.artist_count
        res = {}
        @@artists.each do |artist|
            if res[artist] 
                res[artist] += 1
            else
                res[artist] = 1
            end
        end
        res
    end
end