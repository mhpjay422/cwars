

def score( dice )
  points = 0
  triple_map = {
    1 => 1000, 6 => 600, 5 => 500, 4 => 400, 3 => 300, 2 => 200
  }

  dice.uniq.each do |num|
    if dice.count(num) >= 3
      points += triple_map[num]
      points += 100 if num == 1 && dice.count(num) == 4
      points += 200 if num == 1 && dice.count(num) == 5
      points += 50 if num == 5 && dice.count(num) == 4
      points += 100 if num == 5 && dice.count(num) == 5
    elsif (dice.count(num) == 1 || dice.count(num) == 2) && (num == 1 || num == 5)
      num == 1 ? points += 100 * dice.count(num) : points += 50 * dice.count(num)
    end
  end
  
  points
end

SCORE_MAP = {
  1 => [0, 100, 200, 1000, 1100, 1200, 2000],
  2 => [0, 0, 0, 200, 200, 200, 400],
  3 => [0, 0, 0, 300, 300, 300, 600],
  4 => [0, 0, 0, 400, 400, 400, 800],
  5 => [0, 50, 100, 500, 550, 600, 1000],
  6 => [0, 0, 0, 600, 600, 600, 1200]
}

def score( dice )
  (1..6).inject(0) do |score, die|
    score += SCORE_MAP[die][dice.count(die)]
  end
end