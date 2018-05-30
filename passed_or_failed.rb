class PassedOrFailed
    def initialize(hash, toPass)
        
        @passed = Hash.new
        @failed = Hash.new
        hash.each do |key, value|
          if value.to_i >= toPass.to_i
              @passed[key]=value.to_i
          else
              @failed[key]=value.to_i
          end
        end
    end

    def perform
        {passed: @passed , failed: @failed}
    end
end