def help
   help = 
   "I accept the following commands:
   - help : displays this help message
   - list : displays a list of songs you can play
   - play : lets you choose a song to play
   - exit : exits this program"
   puts help
 end

 def list(songs)
   songs.each_with_index do |song_name, i|
     puts "#{i+1}. #{song_name}"
   end
 end

 def play(songs)
   puts "Please enter a song name or number:"
   song_to_play = gets.chomp
   if songs.include?(song_to_play)
     puts "Playing #{song_to_play}"
   else if (1...9).to_a.include?(song_to_play.to_i)
     puts "Playing #{songs[song_to_play.to_i - 1]}"
   else
     puts "Invalid input, please try again"
   end
 end
 end

 def exit_jukebox
   puts "Goodbye"
 end

def run(songs)
    input = ""
    while input
    puts "Please enter a command:"
    input = gets.downcase.chomp
    case input
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play(songs)
    when "exit"
    exit_jukebox
    break
  else
    help
  end
end
end