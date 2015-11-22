class Game < ActiveRecord::Base
  belongs_to :rounds
  belongs_to :players
  belongs_to :winner
end
