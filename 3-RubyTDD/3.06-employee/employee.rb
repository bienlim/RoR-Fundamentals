class Employee 
    attr_accessor :tenure_years
    attr_reader :leave_credits, :salary

    def initialize
        @tenure_years = 0
        @salary = 100
        @leave_credits = 0
    end

    def after_a_year

        @tenure_years += 1
        @salary *= 1.05
        @leave_credits += 10 unless @leave_credits >= 20
    end

    def file_leave
        @leave_credits -= 1 if @leave_credits > 0
    end

end