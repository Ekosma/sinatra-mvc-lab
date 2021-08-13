class PigLatinizer


    def piglatinize(text = nil)
        @text = text
        @new_sentence = []
        @split_all_text = @text.split(" ")
        
        @split_all_text.each do |word|
            lowercase_word = word.downcase()
            if lowercase_word.start_with?(/[aeoui]/)
                word.concat("way")
            else 
                if lowercase_word.start_with?(/pl|th|pr|sk|wh/)
                    cut = word[0..1]
                    word = word[2..-1]
                elsif lowercase_word.start_with?(/spr|str/)
                    cut = word[0..2]
                    word = word[3..-1]
                else 
                    cut = word[0]
                    word = word[1..-1]
                end
                word.concat(cut,"ay")
            end 
            @new_sentence << word
        end

        return @new_sentence.join(" ")  
    end

end