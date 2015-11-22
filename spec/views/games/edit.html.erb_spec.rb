require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :rounds => nil,
      :players => nil,
      :number_of_players => 1,
      :winner => nil
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_rounds_id[name=?]", "game[rounds_id]"

      assert_select "input#game_players_id[name=?]", "game[players_id]"

      assert_select "input#game_number_of_players[name=?]", "game[number_of_players]"

      assert_select "input#game_winner_id[name=?]", "game[winner_id]"
    end
  end
end
