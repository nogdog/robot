class GenomeTest < ActionView::TestCase
  test 'test initialize' do
    genome = Genome.new
    assert genome.is_a? Genome
  end
end
