require 'rails_helper'
RSpec.describe User, type: :model do
  # This is our control
  context "With valid attributes" do 
    it "should save" do 
      user = User.new(
        first_name: 'shane',
        last_name: 'chang',
        email: 'schang@codingdojo.com'
      )
      expect(user).to be_valid
    end
  end
  
  context "With invalid attributes" do 
    it "should not save if first_name field is blank" do
      user = User.new(
            first_name: '', 
            last_name: 'chang', 
            email: 'schang@codingdojo.com'
        )
      expect(user).to be_invalid
    end
    
    it "should not save if last_name field is blank" do
        user = User.new(
            first_name: 'chang', 
            last_name: '', 
            email: 'schang@codingdojo.com'
        )
      expect(user).to be_invalid
    end
    
    it "should not save if email already exists" do 

        User.create(first_name:'abed',last_name:'yusop',email: 'schang@codingdojo.com')
        user = User.new(
            first_name: 'chang', 
            last_name: 'ching', 
            email: 'schang@codingdojo.com'
        )
        expect(user).to be_invalid
    end
    
    it "should not save if invalid email format" do
        user = User.new(
            first_name: 'chang', 
            last_name: 'ching', 
            email: 'schangcodingdojo.com'
        )
        expect(user).to be_invalid
    end
    end
end