require_relative 'employee'
RSpec.describe Employee do
    before(:each) do 
        @employee = Employee.new
    end
 
    it 'tenure_years attribute has a getter and setter methods' do
        expect(@employee.tenure_years).to eq(0)
        @employee.tenure_years = 1;
        expect(@employee.tenure_years).to eq(1)
    end
    it 'leave_credits only has getter methods' do

        expect(@employee.leave_credits).to eq(0)
        expect{@employee.leave_credits = 1}.to raise_error(NoMethodError)
    end
    it 'salary only has getter methods' do
        expect(@employee.salary).to eq(100)
        expect{@employee.salary = 1}.to raise_error(NoMethodError)
    end
    it 'has an add_a_year method' do
        @employee.after_a_year
        expect(@employee.tenure_years).to eq(1)
        expect(@employee.salary).to eq(105)
        expect(@employee.leave_credits).to eq(10)
    end

    it 'leave credit should not be credited for the first half year' do
        expect(@employee.leave_credits).to eq(0) 
    end

    it 'has file_leave method that deducts 1 to leave_credits' do
        @employee.after_a_year
        @employee.file_leave
        expect(@employee.leave_credits).to eq(9)
    end

    it 'should not be able to receive new leave credits when it reached maximum 20 leave credits' do 
        @employee.after_a_year
        @employee.after_a_year
        @employee.after_a_year
        expect(@employee.leave_credits).to eq(20)
    end
end