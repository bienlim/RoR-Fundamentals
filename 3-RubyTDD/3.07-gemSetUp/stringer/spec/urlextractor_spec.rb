require "spec_helper"
RSpec.describe URLExtractor do
  it "extracts the protocol part of the string url" do 
    expect(URLExtractor.protocol "https://hackerhero.com").to eq("https")
  end
end 