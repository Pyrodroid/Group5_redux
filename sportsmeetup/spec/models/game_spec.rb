require 'rails_helper'
require 'spec_helper'

RSpec.describe Game, type: :model do
    it "updates signups" do
    game=FactoryGirl.create(:game, sign_ups:1)
    Game.sign_up(game, "Name", "bademail")
    expect(game.sign_ups).to eq(2)
    end
    it "updates email list" do
    game=FactoryGirl.create(:game, sign_ups:1, emails: "")
    Game.sign_up(game, "Name", "good@email.com")
    expect(game.emails).to eq("good@email.com,")
    end
    it "updates the name list" do
    game=FactoryGirl.create(:game, sign_ups:1, emails: "an@email.net,", twostring: "the first name")
    Game.sign_up(game, "another name", "good@email.com")
    expect(game.twostring).to eq("the first name\nanother name")
    end
    it "updates signups to min and calls Notifier" do
      @game4=FactoryGirl.create(:game, sign_ups:1, min: 2, emails: "")
      expect(Notifier).to receive(:go).and_call_original
      Game.sign_up(@game4, "Name", "good@email.com")
    end
    #it "sets oneint to 0 for good email" do
    #game=FactoryGirl.create(:game, last_email: "good@email2.com")
    #Game.sign_up(game, "Name", "good@email.net")
    #expect(game.oneint).to eq(0)
    #expect(game.emails).to eq("good@email.net")
    #end
end
