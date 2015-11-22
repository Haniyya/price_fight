require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :rounds => nil,
        :players => nil,
        :number_of_players => 1,
        :winner => nil
      ),
      Game.create!(
        :rounds => nil,
        :players => nil,
        :number_of_players => 1,
        :winner => nil
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
