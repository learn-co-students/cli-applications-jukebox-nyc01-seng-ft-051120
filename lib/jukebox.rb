# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  
  if (1..9).to_a.index(choice.to_i) != nil
    puts "Playing #{songs[choice.to_i - 1]}"
  elsif songs.index(choice) != nil
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  loop do
  puts "Please enter a command:"
  command = gets.strip
  
    if command == "list"
    list(songs)
    elsif command == "play"
    play(songs)
    elsif command == "help"
    help
    elsif command == "exit"
    exit_jukebox
    break
end
end
end