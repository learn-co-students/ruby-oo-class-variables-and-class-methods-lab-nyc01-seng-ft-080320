class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = Hash.new {|k,v| v =0 }
    @@artist_count = {}


    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
        add_to_count(genre,@@genre_count)
        add_to_count(artist,@@artist_count)
    end

    def add_to_count(this_instance,class_instance)
        if class_instance.has_key?(this_instance)
            class_instance[this_instance]+=1
        else
            class_instance[this_instance] = 1
        end
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
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end
end