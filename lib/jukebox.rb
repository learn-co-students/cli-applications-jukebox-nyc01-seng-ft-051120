# Add your code here
require "pry"

def help  
  puts "I accept the following commands: "
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"  
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs) 
  puts "Please enter a song name or number:"
  user_response = gets.strip

  if user_response.to_i <= songs.length && user_response.to_i > 0 
    puts "Playing #{songs[user_response.to_i - 1]}"
   elsif songs.include?(user_response)
      returned_song = songs.find do |song|
        user_response == song
      end 
    puts "Playing #{returned_song}"
  else
    puts "Invalid input, please try again"
  end 
end


def list(songs) 
  songs.each_with_index do |song, song_index|
    puts (song_index + 1).to_s + ". " + song
  end 
end


def exit_jukebox 
  puts "Goodbye"
end 


def run (songs)
  puts "Please enter a command:"
  user_input = gets.strip
  
  until user_input == "exit"
    if user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    else 
      help
    end 
    user_input = gets.strip 
  end
  
  exit_jukebox
  # binding.pry
end 







