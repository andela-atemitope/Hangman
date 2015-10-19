module HangMan  

  class SaveLoad


    attr_reader :save_name, :username, :load_username, :load_file, :word_loaded, :remaining_letters_loaded, :answer_loaded, :lives_loaded

    def initialize(game_play)
      @display = Display.new
      @game_play = game_play
    end

    def save_game(obj = nil, isTest = false)
      puts "\nInput a custom name for your saved data\n"
      username = gets.chomp.strip
        if username.length > 8 
          puts "\nName too long, try again\n" 
          save_game unless isTest
        elsif username.length <= 0
          puts "Invalid input, Try again" 
          save_game unless isTest
       else 
          @save_name = username.to_s + '.txt'
          save_data(obj) 
        end
    end

    def save_data(obj = nil)
      # require "pry"; binding.pry
      File.open(save_name,'w+') do | line |
        line.puts obj.word.join(",")
        line.puts obj.remaining_letters.join(",")
        line.puts obj.answer.join(",")
        line.puts obj.lives
      end
      puts @display.display_save_successful
      save_continue(obj)
    end
  
    def save_continue(obj = nil)
      puts @display.display_save_continue
      @save_continue = gets.chomp.strip
      case @save_continue
        when "c" then obj.visual_update
        when "q" then exit
          else 
           obj.exit_game
      end
    end


    def load_game(obj = nil)
      puts "Type the name of your saved game"
      @load_username = STDIN.gets.chomp.downcase
      if File.file?("#{@load_username}"+".txt")
        load_saved_file(obj)
      else
        load_failed(@game_play)
      end
    end


    def load_failed(obj = nil)
      puts @display.display_load_failed
      sleep 1
      obj.get_user_input
    end 


    def load_saved_file(obj = nil)
      @load_file = File.readlines("#{load_username}"+".txt")

      @load_file.map! do |item|  
        item.chomp.delete(",")
      end
      # p @load_file      
      continue_loaded_game(obj)
    end

    def continue_loaded_game(obj = nil)
      @word_loaded = load_file[0].chars
      @remaining_letters_loaded = load_file[1].chars
      @answer_loaded = load_file[2].chars
      @lives_loaded = load_file[3].to_i
      obj = obj || GamePlay.new
      # require "pry"; binding.pry
      obj.load_saved_game(word_loaded, remaining_letters_loaded, answer_loaded, lives_loaded)
    end

  end
end
  