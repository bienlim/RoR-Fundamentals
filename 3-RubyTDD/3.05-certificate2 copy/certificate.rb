class Certificate
    attr_accessor :title, :awardee, :awarder
    def initialize()  #constructor
        @technologies = []
    end
    def announce
        "#{@title}: #{@awardee}"
    end
    def technologies
        @technologies
    end
    def add_technologies(tech)
        @technologies.push(tech)
    end
    def display_technologies

        @technologies.each do |tech|
            print tech
        end
    end
end

# cert = Certificate.new("Proficient in Backend", "Philip Campani")
# puts cert.title # => "Proficient in Backend"
# cert.announce  # => "Proficient in Backend: Philip Campani"