class Map
  include ActiveModel::Model

  def initialize
    @map = []
    twelve.each { @map << [] }
    options = %w[. . . c]
    twelve.each do |x|
      twelve.each do |y|
        @map[x][y] = wall?(x, y) ? 'W' : options.sample
      end
    end
  end

  def as_array
    @map
  end

  def as_text
    text = ''
    @map.each do |row|
      text += row.join + "\n"
    end
    text
  end

  private

  def wall?(x, y)
    x.zero? || x == 11 || y.zero? || y == 11
  end

  def twelve
    (0..11)
  end
end
