class CaesarCipher
    def initialize(text, offset = 13)
        @text = text.to_s
        @alphabeth = Array('a'..'z').join + Array('A'..'Z').join
        @cipher = (Array('a'..'z').rotate(offset) + Array('A'..'Z').rotate(offset)).join
        
    end
    
    def perform
        puts "#{@text.tr(@alphabeth, @cipher)}"
    end
end