# Code found at https://gist.github.com/feiskyer/1964724


class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

def compare_game?(game)
  return (game[0][1] + game[1][1]) =~ /rs|sp|pr|rr|ss|pp/i
end
def rps_game_winner(game)
  strategy=["r","p","s"]
  raise WrongNumberOfPlayersError unless game.length == 2
  if strategy.include?(game[0][1].downcase) && strategy.include?(game[1][1].downcase)
    if compare_game?(game)
      game[0]
    else
      game[1]
    end
  else
    raise NoSuchStrategyError
  end
end

def rps_tournament_winner(game)
  if game[0][1].class==String
    rps_game_winner(game)
  else
    a1=rps_tournament_winner(game[0])
    a2=rps_tournament_winner(game[1])
    rps_tournament_winner([a1,a2])
  end
end

p rps_tournament_winner([[[["Armando", "P"], ["Dave", "S"]], [["Richard", "R"], ["Michael", "S"]]], [[["Allen", "S"], ["Omer", "P"]], [["David E.", "R"], ["Richard X.", "P"]]]])

p rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ] )
