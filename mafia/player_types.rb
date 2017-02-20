require_relative 'player'

module Mafia
  class Bodyguard < Player
    def attack(_player)
      raise NotImplementedError
    end

    def team
      :town
    end
  end

  class Mafioso < Player
    def protect(_player)
      raise NotImplementedError
    end

    def team
      :mafia
    end
  end

  class Vigilante < Player
    def team
      :town
    end
  end

  class Villager < Player
    def attack(_player)
      raise NotImplementedError
    end

    def protect(_player)
      raise NotImplementedError
    end

    def team
      :town
    end
  end
end
