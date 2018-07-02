songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  %Q(
    I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play 
    - play : lets you choose a song to play 
    - exit : exits this program
    )
end
    
def list(song_list)
  song_list.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end 



def play(song_list) #takes in song array as arguments 
#puts prompt "Please enter a song name or number:"
#stores user's response using gets.chomp
#if valid, puts "Playing <song name>"
#if not, puts "Invalid input, please try again."

# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]
  puts "Please enter a song name or number: "
  user_input = gets.chomp
  
  # if user_input == "1" || user_input == "1901"
  #   puts "Playing 1901"
  # elsif user_input == "2" || user_input == "Wait Up"
  #   puts "Playing Wait Up"
  # elsif user_input == "3" || user_input == "Too Much"
  #   puts "Playing Too Much"
  # elsif user_input == "4" || user_input == "Young Blood"
  #   puts "Playing Young Blood"
  # elsif user_input == "5" || user_input == "Tiga"
  #   puts "Playing Tiga"
  # elsif user_input == "6" || user_input == "Abducted"
  #   puts "Playing Abducted"
  # elsif user_input == "7" || user_input == "Consolation Prizes"
  #   puts "Playing Consolation Prizes"
  # elsif user_input == "8" || user_input == "Cats in the Cradle"
  #   puts "Playing Cats in the Cradle"
  # elsif user_input == "9" || user_input == "Keep It Loose, Keep It Tight"
  #   puts "Playing Keep It Loose, Keep It Tight"
  # else
  #   puts "Invalid input, please try again"
  
  song_list.each_with_index do |song, index|
    if user_input == song || user_input == (index + 1).to_s 
      puts "Playing #{song}"
    end
  end
  return "Invalid input, please try again"
end
  
def exit_jukebox
  returns "Goodbye"
end

def run 
  help
  puts "Please enter a command:"
  user_input = gets.chomp
