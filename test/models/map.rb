class MapTest < ActionView::TestCase
  test 'test initialize' do
    map = Map.new
    assert map.is_a?(Map)
    assert map.as_array.is_a?(Array)
    assert map.as_text.is_a?(String)
  end

  test 'corners are walls' do
    map = Map.new.as_array
    [0, 11].each do |x|
      [0, 11].each do |y|
        assert map[x][y] == 'W'
      end
    end
  end

  test 'inside of corners are not walls' do
    map = Map.new.as_array
    [1, 10].each do |x|
      [1, 10].each do |y|
        assert(map[x][y] == '.' || map[x][y] == 'c')
      end
    end
  end
end
