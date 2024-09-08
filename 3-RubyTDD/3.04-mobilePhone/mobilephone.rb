class MobilePhone
    attr_accessor :text_balance, :call_balance
    def initialize
        @sim_number = generate_number
        @text_balance = 10
        @call_balance = 10
        @text_deduction = 1
        @call_deduction = 1.5
    end
    def show_number
        @sim_number
    end
    def show_text_balance
        @text_balance
    end
    def show_call_balance
        @call_balance
    end
    def text
        if(@text_balance - @text_deduction >= 0)
            @text_balance -= @text_deduction 
            self
        else
            "Insufficient balance"
        end
    end
    def call
        if(@call_balance - @call_deduction >= 0)
            @call_balance -= @call_deduction
            self
        else
            print "Insufficient balance"
        end
    end
    def load_text(amount)
        @text_balance += amount
        self
    end
    def load_call(amount)
        @call_balance += amount
        self
    end 
    def sim_information
        puts "SIM number: #{show_number}. Call balance: #{show_call_balance}. Text balance: #{show_text_balance}"
    end
    private
        def generate_number
            ((1..9).collect {rand(9)}).join
        end
end