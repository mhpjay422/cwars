

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

