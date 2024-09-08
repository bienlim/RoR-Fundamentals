require_relative 'mobilephone'
RSpec.describe MobilePhone do
    before(:each) do
        # updated this block to create two certificates
        @phone1 = MobilePhone.new()
        @phone2 = MobilePhone.new()
    end 

    it "should get the user's text balance" do
        expect(@phone1.show_text_balance).to eq(10)
        expect(@phone2.show_text_balance).to eq(10)
    end  
    it "should get the user's call balance" do
        expect(@phone1.show_call_balance).to eq(10)
        expect(@phone2.show_call_balance).to eq(10)
    end  
    it "should get the user's call balance" do
        expect(@phone1.text.show_text_balance).to eq(9)
        #expect(@phone2.show_call_balance).to eq(10)
    end  
    it "cant text with 0 text_balance" do
        @phone1.text_balance = 0
        expect(@phone1.text).to eq("Insufficient balance")
        #expect(@phone2.show_call_balance).to eq(10)
        #expect(@phone1.show_text_balance).to raise_error(NoMethodError)
    end  
    it "cant change number" do
        expect{@phone1.sim_number = 111}.to raise_error(NoMethodError)
    end  
    it "cant change number" do
        expect{@phone1.text_deduction = 111}.to raise_error(NoMethodError)
    end  
    
end