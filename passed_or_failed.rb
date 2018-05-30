class PassedOrFailed
    def initialize(hash, toPass)
        
        @passed = Hash.new
        @failed = Hash.new
        hash.each do |key, value|
          if value.to_i >= toPass.to_i
              @passed[key]=value
          else
              @failed[key]=value
          end
        end
    end
    def result
        puts "#@passed, #@failed"
    end
end