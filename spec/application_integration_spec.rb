# Write your tests here!
require 'spec_helper'
describe "Application" do
  describe "GET '/'" do
    before do
      get '/'
    end
    it "returns a 200 status code" do
      expect(last_response.status).to eq(200)
    end


    it "renders index.erb" do
      expect(last_response.body).to eq(File.read("views/index.erb"))
    end

 end
 describe "POST '/'" do
   before do
     post '/greet'
   end
   it "returns a 200 status code" do
     expect(last_response.status).to eq(200)
   end
   it "renders greet.erb" do
     expect(last_response.body).to include("<h1>Hi , nice to meet you!</h1>")
   end
 end
end
