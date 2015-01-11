require 'rails_helper'

RSpec.describe Api::MarketsController do
  it "responds to index" do
    get :index
    expect(response).to be_success
    expect(json[:markets]).to be_a(Array)
  end

  it "responds to show" do
    get :show, id: create(:market).id
    expect(response).to be_success
    expect(json[:markets]).to be_a(Hash)
  end

  it "has an appropriate not found" do
    get :show, id: 1
    expect(response).to_not be_success
    expect(response.status).to be(404)
    expect(json[:errors][:status]).to eq("404 Not Found")
  end
end
