require 'rails_helper'

RSpec.describe "Friendships", type: :request do
  describe "GET /add" do
    it "returns http success" do
      get "/friendship/add"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /remove" do
    it "returns http success" do
      get "/friendship/remove"
      expect(response).to have_http_status(:success)
    end
  end

end
