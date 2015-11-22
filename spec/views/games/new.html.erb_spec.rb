require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      :rounds => nil,
      :players => nil,
      :number_of_players => 1,
      :winner => nil
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_rounds_id[name=?]", "game[rounds_id]"

      assert_select "input#game_players_id[name=?]", "game[players_id]"

      assert_select "input#game_number_of_players[name=?]", "game[number_of_players]"

      assert_select "input#game_winner_id[name=?]", "game[winner_id]"
    end
  end
end
