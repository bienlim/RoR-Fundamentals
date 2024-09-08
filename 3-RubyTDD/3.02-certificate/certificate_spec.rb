require_relative 'certificate'
RSpec.describe Certificate do
  before(:each) do
    # updated this block to create two certificates
    @certificate1 = Certificate.new("Proficient in Web Fundamentals", "Philip Campani","Micheal Choi")
    @certificate2 = Certificate.new("Proficient in Advanced PHP", "Philip Campani","Micheal Choi")
  end 
    
  # Code from the previous tab removed for brevity. Leave it in.

  it 'has a method announce to display title and awardee' do
    expect(@certificate1.announce).to eq("Proficient in Web Fundamentals: Philip Campani")
    expect(@certificate2.announce).to eq("Proficient in Advanced PHP: Philip Campani")
  end
  it 'should have a getter and a setter' do
    @certificate2.awarder = "Bien Lim"
    expect(@certificate1.awarder).to eq("Micheal Choi")
    expect(@certificate2.awarder).to eq("Bien Lim")
  end
  it 'should add new technologies' do
    @certificate2.add_technologies("Ruby")
    expect(@certificate1.technologies).to eq([])
    expect(@certificate2.technologies).to eq(["Ruby"])
  end
  it 'should add display technologies' do
    @certificate2.add_technologies("Ruby")
    @certificate2.add_technologies("PHP")
    expect(@certificate2.display_technologies).to eq(["Ruby","PHP"])
  end
end