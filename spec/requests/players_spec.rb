require 'rails_helper'

RSpec.describe "Players", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/players/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/players/show"
      expect(response).to have_http_status(:success)
    end
  end

end
