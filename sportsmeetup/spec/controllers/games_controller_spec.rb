require 'rails_helper'

RSpec.describe GamesController, type: :controller do

let(:game) { FactoryGirl.create(:game) }
let(:valid_attributes) { FactoryGirl.build(:game).attributes.symbolize_keys }

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

describe "GET #edit" do
    it "assigns the requested game as @game" do
      game = Game.create!
      get :edit, {:id => game.to_param}
      expect(assigns(:game)).to eq(game)
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) { FactoryGirl.build(:game, title: 'New Title').attributes.symbolize_keys }

      it "updates the requested game", focus: true do
        game = Game.create! valid_attributes
        put :update, {:id => game.to_param, :game => new_attributes}
        game.reload
        expect(assigns(:game).attributes.symbolize_keys[:game]).to eq(new_attributes[:game])
      end
    end
    describe "verify correct password" do
      let(:new_attributes) { FactoryGirl.build(:game, onestring: 'Password').attributes.symbolize_keys }
      
      it "updates the requiested game", focus: true do
        game = Game.create! valid_attributes
        put :update, {:id=> game.to_param, :game =>new_attributes}
        game.reload
        expect(assigns(:game).attributes.symbolize_keys[:game]).to eq(new_attributes[:game])
        expect(game.sign_ups).to eq(4)
      end
    end 
     
    describe "reject incorrect password" do
      let(:new_attributes) { FactoryGirl.build(:game, onestring: 'a').attributes.symbolize_keys }
      
      it "does not add to the signups", focus: true do
        game = Game.create! valid_attributes
        put :update, {:id=> game.to_param, :game =>new_attributes}
        game.reload
        expect(assigns(:game).attributes.symbolize_keys[:game]).to eq(new_attributes[:game])
        expect(game.sign_ups).to eq(3)
      end
    end 
  end
  
  describe 'DELETE #destroy' do
  context "success" do
    it "deletes the game" do
      @game = Game.create! valid_attributes
      expect{delete :destroy, :id => @game}.to change(Game, :count).by(-1)
    end
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
