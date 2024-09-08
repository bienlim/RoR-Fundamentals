require "urlextactor/version"
module URLExtactor
    def self.protocol input
       output = ""
       output = input[0, input.index(':')]
       output
    end
    def self.domain input
       output = ""
       output = input[input.index('://')+3,input.length]
       output
    end
    def self.extension input
       output = ""
       output = input[input.index('.')+1,input.length]
       output
    end
    def self.path input
       output = ""
       output = input[input.index('.com')+4,input.length]
       output
    end
    def self.query input
       output = ""
       output = input[input.index('?'),input.length]
       output
    end
end 