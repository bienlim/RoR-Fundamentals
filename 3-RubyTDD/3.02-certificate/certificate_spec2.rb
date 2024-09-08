require_relative 'certificate'
RSpec.describe Certificate do
  it "has a getter and setter for title attribute" do
    certificate = Certificate.new
    certificate.title = "Proficient in Backend"
    expect(certificate.title).to eq("Proficient in Backend")
  end
  it "has a getter and setter for the awardee attribute" do
    certificate = Certificate.new
    certificate.awardee = "Philip Campani"
    expect(certificate.awardee).to eq("Philip Campani")
  end
  it 'has a method announce to display title and awardee' do
    certificate = Certificate.new
    certificate.title = "Proficient in Backend"
    certificate.awardee = "Philip Campani"
    expect(certificate.announce).to eq("Proficient in Backend: Philip Campani")
  end
end