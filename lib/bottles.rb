class Bottles

  def verse(n)
    result = "#{n} bottles of beer on the wall, #{n} bottles of beer.\n"
    if (n > 2)
      result += default_second_verse(n-1)
    elsif (n == 2)
      result += second_last_verse
    else
      result = last_verse
    end
    result
  end

  private

  def default_second_verse(m)
    "Take one down and pass it around, #{m} bottles of beer on the wall.\n"
  end

  def second_last_verse
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def last_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" +
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

end
