# Trash-picking robot
class Robot
  include ActiveModel::Model
  attr_accessor :genome # TBD: what sort of access?

  def initialize
    @genome = Genome.new
  end

  def create_new
    self
  end

  def create_child(parent1, parent2)
    self
  end
end
