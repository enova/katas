module Mafia
  class Player
    attr_reader :game, :name

    def initialize(game, name)
      @game = game
      @name = name
      @alive = true
    end

    def attack(player)
      game.attack_player(self, player)
    end

    def protect(player)
      game.protect_player(self, player)
    end

    def vote(player)
      game.add_vote(self, player)
    end

    def kill
      @alive = false
    end

    def alive?
      @alive
    end

    def dead?
      !@alive
    end
  end
end
