class MusicLibraryController
  
  
  def initialize(path = "./db/mp3s")
   @path=path
   new_music = MusicImporter.new(path)
    new_music.import
  end
  
  def call
    
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts  "To list all of the genres in your library, enter 'list genres'."
    puts  "To list all of the songs by a particular artist, enter 'list artist'."
    puts  "To list all of the songs of a particular genre, enter 'list genre'."
    puts  "To play a song, enter 'play song'."
    puts  "To quit, type 'exit'."
    puts  "What would you like to do?"
    
    
    input = gets.strip.downcase
    while input !="exit"
  
        if input == "list songs"
          list_songs
        elsif input == "list artists"
          list_artists
        elsif input == "list genres"
          list_genres
        elsif input == "list artist"
          list_songs_by_artist
        elsif input == "list genre"
          list_songs_by_genre
        elsif input == "play song"
          play_song
        else
          puts "Bye"
        end
        input = gets.strip.downcase
      end
      
        
    end
    
  
    def list_songs
      Song.all.sort{|a, b| a.name <=> b.name}.each_with_index do |s, i|
          puts "#{i+1}. #{s.artist.name} - #{s.name} - #{s.genre.name}"
        end
    end
    
    def list_artists
      Artist.all.sort{|a, b| a.name <=> b.name}.each_with_index do |a, i|
          puts "#{i+1}. #{a.name}"
        end
    end
    
    def list_genres
      Genre.all.sort{|a, b| a.name <=> b.name}.each_with_index do |g, i|
          puts "#{i+1}. #{g.name}"
        end
    end
  
     def list_songs_by_artist
    
    end
    
    def list_songs_by_genre
      
    end
    
    
    
    def play_song
      puts "Which song number would you like to play?"
          input = gets.strip.downcase
    end
    
    
end
    