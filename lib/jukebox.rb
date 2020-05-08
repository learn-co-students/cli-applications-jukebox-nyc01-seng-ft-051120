# Add your code here
require 'pry'



def help 
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  song_list = []
  songs.each_with_index do |a_song, index|
    puts "#{index + 1}. #{a_song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  songs.each do |each_song|
    if song_choice == each_song 
      puts "Playing #{each_song}"
      return
    elsif song_choice.to_i == songs.index(each_song) + 1 
      puts "Playing #{each_song}"
      return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end 
 
 
def run (songs) 
  puts "Please enter a command:"
  input = gets.strip
  if input == 'list'
    list(songs)
  elsif input == 'play'
    play(songs)
  elsif input == 'help'
    help
  elsif input == 'exit'
    return exit_jukebox
  end
end


