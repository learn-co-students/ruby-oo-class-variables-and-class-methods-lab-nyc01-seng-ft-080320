class Song
    @@count = 0;
    @@genres = [];
    @@artists = [];
    attr_accessor :name, :artist, :genre;

    def initialize(song, artist, genre)
        @name = song;
        @artist = artist;
        @genre = genre;

        @@count += 1;
        @@genres.push(genre);
        @@artists.push(artist);
    end

    def self.genre_count
        gHash = {};
        @@genres.each {|genre|
            if gHash[genre]
                gHash[genre] += 1;
            else
                gHash[genre] = 1;
            end
        }
        return gHash;
    end

    def self.count
        @@count
    end

    def self.genres
       return  @@genres.uniq;
    end

    def self.artists
        return @@artists.uniq;
    end

    def self.artist_count
        sHash = {};
        @@artists.each {|artist|
            if sHash[artist]
                sHash[artist] += 1;
            else
                sHash[artist] = 1;
            end
        }
        return sHash;
        
    end

end