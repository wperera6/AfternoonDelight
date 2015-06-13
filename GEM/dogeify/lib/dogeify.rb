require 'dogeify/version'
require 'engtagger'

class Dogeify
  ADJECTIVES = %w(so such very much many).freeze

  def initialize
    @tagger = EngTagger.new
  end

  def process(str)
    # Convert input to lowercase.
    str = str.downcase

    # Extract nouns, prefixing each with one of the
    # above adjectives into sentences of 2 words.
    tagged_str = @tagger.add_tags(str)
    phrases = @tagger.get_nouns(tagged_str).keys
    phrases = phrases.each_with_index.map do |phrase, i|
      "#{adjective(i)} #{phrase}."
    end

    # End every input with "wow".
    phrases << 'wow.'

    # Return a string, separating each sentence
    # with a space.
    phrases.join(' ')
  end

  private

  def adjective(i)
    ADJECTIVES[i % ADJECTIVES.size]
  end
end


# require "pry"
# class Peekaboo

#  def initialize(file_path, line_num)
#    @file_path = file_path
#    @line_num = line_num
#    binding.pry
#  end


#  def open_file
#    binding.pry
#    f = File.open("#{@file_path}", "r")
#     @line_num = 5
#     num = 0
#    f.each do |line| 
#      ##  why wasn't this working with for i in 0..10
#      while num < 10
#        if num == @line_num
#          line.write 
#          #need a way to access line 5 lines up 
#          #write binding.pry at line (line_num - 5)
#          #explore tempfile? 
#          return
#        else 
#          num+=1
#        end 
#      end
#    end 
#  end 
  
#  #rerun code in terminal so that you're in the pry 
#  #open up file in new sublime window so you can save whatever changes you want 
# end
