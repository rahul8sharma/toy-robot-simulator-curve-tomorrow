class Board
  attr_reader :rows, :columns

  def initialize(rows, columns)
    raise TypeError, 'Invalid rows or columns type. It should be integer.' unless rows.is_a? Integer and columns.is_a? Integer

    @rows, @columns = rows, columns
  end
end