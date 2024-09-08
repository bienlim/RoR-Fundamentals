require "urlextractor/version"cd ...
module URLExtractor
    def self.protocol input
       output = ""
       output = input[0, input.index(':')]
       output
    end
end 