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
        @@genres << genre
        @@artists << artist 
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
        @@genres.group_by { |genre| genre}.map { |k, v| [k, v.size]}.to_h
    end 

    def self.artist_count
        @@artists.group_by { |artist| artist}.map { |k, v| [k, v.size]}.to_h
    end 




end 


ninety_nine_problems = Song.new("99 problems", "Jay Z", "rap")
# puts ninety_nine_problems.genre 
# puts Song.count
butterfly_effect = Song.new("Butterfly Effect", "Travis Scott", "rap")
astrothunder = Song.new("ASTROTHUNDER", "Travis Scott", "rap")
impossible = Song.new("Impossible", "Travis Scott", "rap")
i_wanna_see_some_ass = Song.new("I Wanna See Some Ass", "Jack Harlow", "rap")
# puts Song.count 
# puts Song.genres
puts Song.genre_count 
