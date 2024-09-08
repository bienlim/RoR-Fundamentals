require "spec_helper"
RSpec.describe URLExtactor do
  it "extracts the protocol part of the string url" do 
    expect(URLExtactor.protocol "https://hackerhero.com").to eq("https")
  end
  it "extracts the domian part of the string url" do 
    expect(URLExtactor.domain "https://hackerhero.com").to eq("hackerhero.com")
  end
  it "extracts the extension part of the string url" do 
    expect(URLExtactor.extension "https://hackerhero.com").to eq("com")
  end
  it "extracts the path part of the string url" do 
    expect(URLExtactor.path "https://hackerhero.com/groups/abc/index.html").to eq("/groups/abc/index.html")
  end
  it "extracts the path part of the string url" do 
    expect(URLExtactor.query "https://hackerhero.com/groups?key1=value1&key2=value2").to eq("?key1=value1&key2=value2")
  end


end 