class RobotTest < ActionView::TestCase
  test 'test initialize' do
    robot = Robot.new
    assert robot.is_a? Robot
    assert robot.genome.is_a? Genome
  end

  test 'create new robot' do
    robot = Robot.new.create_new
    assert robot.is_a? Robot
  end

  test 'have a baby' do
    parent1 = Robot.new.create_new
    parent2 = Robot.new.create_new
    robot = Robot.new.create_child(parent1, parent2)
    assert robot.is_a? Robot
  end
end
