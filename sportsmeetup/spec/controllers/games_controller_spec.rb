require 'rails_helper'

RSpec.describe GamesController, type: :controller do

let(:game) { FactoryGirl.create(:game) }

  describe "GET #index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  
context "#edit" do
    #render_views
    it "user should be able to edit game" do
      get :edit, id: game.id
      expect(response).to render_template("edit")
    end
end

  #describe "GET #show" do
    #it "assigns the requested game to @game"
    #it "renders the :show template"
  #end
 
  #describe "POST #create" do
    #context "with valid attributes" do
      #it "saves the new game in the database"
      #it "redirects to the success page"
    #end
    
    #context "with invalid attributes" do
      #it "does not save the new game in the database"
      #it "re-renders the :new template"
    #end

end
