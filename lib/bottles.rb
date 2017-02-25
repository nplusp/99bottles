class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, finish)
    return unless start || finish
    a = []
    start.downto(finish) { |x| a << verse(Integer(x)) }
    a.join("\n")
  end

  def verse(bottles)
    return zero_bottles_verse if bottles.zero?
    return one_bottle_verse if bottles == 1
    multiple_bottles_verse(bottles)
  end

  def zero_bottles_verse
    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def one_bottle_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def multiple_bottles_verse(bottles)
    "#{bottles_with_amount(bottles)} of beer on the wall, #{bottles_with_amount(bottles)} of beer.\nTake one down and pass it around, #{bottles_with_amount(bottles-1)} of beer on the wall.\n"
  end

  def bottles_with_amount(amount)
    str = amount == 1 ? 'bottle' : 'bottles'
    "#{amount} #{str}"
  end
end
