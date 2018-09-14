require "pry"

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
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs you can play
        - play : lets you choose a song to play
        - exit : exits this program"
end

def list (songs)
  numbered_array = []
  songs.each_with_index do |title, index|
    numbered_array << "#{index+1}. #{title}"
  end
  puts numbered_array
end

def play (songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.include?(input)
    puts "Playing #{input}"
  elsif (1..songs.size).to_a.include?(input.to_i)
    puts "Playing #{songs[(input.to_i)-1]}"
  else puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
    help
  loop do
      puts "Please enter a command:"
      run_input = gets.chomp
        if run_input == "list"
          list (songs)
        elsif run_input == "play"
          play (songs)
        elsif run_input == "help"
          help
        elsif run_input == "exit"
              exit_jukebox
              break
        end
    end
end
