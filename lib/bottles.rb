class Bottles

  def verse(n)
    "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" + default_second_verse(n-1)
  end

  private

  def default_second_verse(m)
    "Take one down and pass it around, #{m} bottles of beer on the wall.\n"
  end

end
