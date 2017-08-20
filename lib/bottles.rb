class Bottles

  def verses(first, last)
    section = ""
    (last..first).to_a.reverse.each do |i|
      section += verse(i)
      if (i != last)
        section += "\n"
      end
    end
    section
  end

  def verse(n)
    result = "#{n} bottles of beer on the wall, #{n} bottles of beer.\n"
    if (n > 2)
      result += default_second_verse(n-1)
    elsif (n == 2)
      result += third_last_verse
    elsif (n == 1)
      result = second_last_verse
    else
      result = last_verse
    end
    result
  end

  private

  def default_second_verse(m)
    "Take one down and pass it around, #{m} bottles of beer on the wall.\n"
  end

  def third_last_verse
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def second_last_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" +
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def last_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

end
